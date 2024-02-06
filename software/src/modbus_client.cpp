#include <algorithm>
#include <cassert>
#include <cerrno>
#include <cstdint>
#include <iomanip>
#include <iostream>
#include <map>
#include <memory>
#include <sstream>
#include <string>

#include <gflags/gflags.h>
#include <glog/logging.h>

#include <modbus/modbus.h>
#include <modbus/modbus-tcp.h>

static const std::map<uint8_t, const std::string> kFunctionNames = {
    {MODBUS_FC_READ_COILS, "READ_BIT_COIL_MULTIPLE"},
    {MODBUS_FC_READ_DISCRETE_INPUTS, "READ_BIT_INPUT_MULTIPLE"},
    {MODBUS_FC_READ_HOLDING_REGISTERS, "READ_REGISTER_HOLDING_MULTIPLE"},
    {MODBUS_FC_READ_INPUT_REGISTERS, "READ_REGISTER_INPUT_MULTIPLE"},
    {MODBUS_FC_WRITE_SINGLE_COIL, "WRITE_BIT_COIL_SINGLE"},
    {MODBUS_FC_WRITE_SINGLE_REGISTER, "WRITE_REGISTER_HOLDING_SINGLE"},
    {MODBUS_FC_WRITE_MULTIPLE_COILS, "WRITE_BIT_COIL_MULTIPLE"},
    {MODBUS_FC_WRITE_MULTIPLE_REGISTERS, "WRITE_REGISTER_HOLDING_MULTIPLE"},
    {MODBUS_FC_MASK_WRITE_REGISTER, "RMW_REGISTER_HOLDING_SINGLE"},
    {MODBUS_FC_WRITE_AND_READ_REGISTERS, "WR_REGISTER_HOLDING_MULTIPLE"},
};

DEFINE_bool(help_functions, false, "Display a list of known values for "
            "--function_(code|name)");
DEFINE_string(gateway_address, "localhost",
              "Host name or IP address to use as Modbus-TCP to RTU gateway");
DEFINE_string(gateway_port, "mbap",
              "TCP service name or port number on which --gateway_address is "
              "listening");
DEFINE_uint64(slave_address, 1, "Modbus slave address to talk to");
DEFINE_uint64(function_code, kFunctionNames.begin()->first, "Modbus function "
              "code to use in the request to --slave_address. See also "
              "--function_name. Use --help_functions for a list.");
DEFINE_string(function_name, kFunctionNames.begin()->second, "Modbus function "
             "name to use in the request to --slave_address. See also "
             "--function_code. Use --help_functions for a list");
DEFINE_int32(request_read_bits_address, -1, "The starting address of the "
             "discrete inputs/coils to read");
DEFINE_uint64(request_read_bits_count, 1, "The count of discrete inputs/coils "
              "starting at --request_read_bits_address to read");
DEFINE_int32(request_write_bits_address, -1, "The starting address of the "
             "coil(s) to set the state of");
DEFINE_int32(request_write_bit_value, -1, "Whether to activate the coil at "
             "--request_write_bits_address. Implies "
             "--function_name=WRITE_BIT_COIL_SINGLE");
DEFINE_validator(request_write_bit_value,
                 [](const char *name, google::int32 value) {
                   return value == -1 || value == 0 || value == 1;
                 });
DEFINE_string(request_write_bits_data, "", "The states to set the coils "
              "starting at --request_write_bits_address to as a "
              "comma-separated list of boolean values (use 1 to activate a "
              "given coil and 0 to deactivate). Implies "
              "--function_name=WRITE_BIT_COIL_MULTIPLE");
DEFINE_int32(request_read_registers_address, -1, "The starting address of the "
             "input/holding registers to read");
DEFINE_uint64(request_read_registers_count, 1, "The count of input/holding "
              "registers starting at --request_read_registers_address to read");
DEFINE_int32(request_write_registers_address, -1, "The starting address of the "
             "holding register(s) to write");
DEFINE_string(request_write_registers_data, "", "The values to set the holding "
              "registers starting at --request_write_registers_address to as a "
              "comma-separated list of integer values in any format understood "
              "by std::stoul() interpreted as 16-bit values. Implies "
              "--function_name=WRITE_REGISTER_HOLDING_SINGLE if the list "
              "contains a single element and "
              "--function_name=WRITE_REGISTER_HOLDING_MULTIPLE otherwise, "
              "unless --request_read_registers_address is also set, in which "
              "case it implies --function_name=WR_REGISTER_HOLDING_MULTIPLE "
              "regardless of the number of elements in the list");
DEFINE_uint64(request_rmw_register_and, 0xFFFF, "The value to use as an AND "
             "mask in conjunction with the register at "
             "--request_write_registers_address. Implies "
             "--function_name=RMW_REGISTER_HOLDING_SINGLE");
DEFINE_uint64(request_rmw_register_or, 0x0000, "The value to use as an OR mask "
             "in conjunction with the register at "
             "--request_write_registers_address. Implies "
             "--function_name=RMW_REGISTER_HOLDING_SINGLE");

static modbus_t *ctx;
// We'll allocate one or the other, depending on the function code, will
// automatically get freed on termination.
static std::unique_ptr<uint8_t[]> bit_buffer;
static std::unique_ptr<uint16_t[]> register_buffer;
static uint8_t modbus_function;
static uint16_t modbus_address;
static uint16_t modbus_count;
static uint16_t *wr_pointer;

static void ListFunctions(void) {
  std::cout << "Known values for --function_(code|name):\n" << std::endl;
  std::cout << "| Code |               Name              |" << std::endl;
  std::cout << "------------------------------------------" << std::endl;
  for (auto const &one_entry : kFunctionNames) {
    std::cout << "|" << std::setw(5) << static_cast<int>(one_entry.first) <<
        " | " << std::setw(31) << one_entry.second << " |" << std::endl;
  }
  std::cout << std::endl;
}

static uint8_t FigureOutFunctionFromRequest(void) {
  struct google::CommandLineFlagInfo flag_info;
  bool and_or_mask = false;

  assert(google::GetCommandLineFlagInfo("request_write_bit_value", &flag_info));
  if (!flag_info.is_default) {
    // --request_write_bit_value was passed, --function_code will be assumed to
    // be 5.
    return MODBUS_FC_WRITE_SINGLE_COIL;
  }

  assert(google::GetCommandLineFlagInfo("request_write_bits_data", &flag_info));
  if (!flag_info.is_default) {
    // --request_write_bits_data was passed, --function_code will be assumed to
    // be 15.
    return MODBUS_FC_WRITE_MULTIPLE_COILS;
  }

  assert(google::GetCommandLineFlagInfo(
      "request_write_registers_data", &flag_info));
  if (!flag_info.is_default) {
    assert(google::GetCommandLineFlagInfo(
          "request_read_registers_address", &flag_info));
    if (!flag_info.is_default) {
      // Both --request_write_registers_data and
      // --request_read_registers_address were passed, --function_code will be
      // assumed to be 23.
      return MODBUS_FC_WRITE_AND_READ_REGISTERS;
    } else {
      if (FLAGS_request_write_registers_data.find(',') ==
            FLAGS_request_write_registers_data.npos) {
        // --request_write_registers_data with only one component was passed,
        // --function_code will be assumed to be 6.
        return MODBUS_FC_WRITE_SINGLE_REGISTER;
      } else {
        // --request_write_registers_data with more than one component was
        // passed, --function_code will be assumed to be 16.
        return MODBUS_FC_WRITE_MULTIPLE_REGISTERS;
      }
    }
  }

  assert(google::GetCommandLineFlagInfo(
      "request_rmw_register_and", &flag_info));
  and_or_mask |= !flag_info.is_default;
  assert(google::GetCommandLineFlagInfo("request_rmw_register_or", &flag_info));
  and_or_mask |= !flag_info.is_default;
  if (and_or_mask) {
    // Either --request_rmw_register_and or --request_rmw_register_or was passed
    // (or both), --function_code will be assumed to be 22.
    return MODBUS_FC_MASK_WRITE_REGISTER;
  }

  // No guess, fall back to explicit --function_(code|name)
  return 0;
}

static uint8_t FigureOutFunctionOrDie(void) {
  struct google::CommandLineFlagInfo flag_info;
  uint8_t maybe_function = FigureOutFunctionFromRequest();

  if (maybe_function) {
    return maybe_function;
  }

  // Start with the default case: both --function_code and --function_name
  // defaulted OR a possibly invalid --function_code passed.
  if (kFunctionNames.find(FLAGS_function_code) == kFunctionNames.end()) {
    LOG(FATAL) << "Unknown Modbus function code '" << FLAGS_function_code <<
              "' passed via --function_code, cannot continue!";
  }

  if (kFunctionNames.at(FLAGS_function_code) == FLAGS_function_name) {
    return static_cast<uint8_t>(FLAGS_function_code);
  }

  // Then do the more elaborate "which was it?" dance.
  assert(google::GetCommandLineFlagInfo("function_code", &flag_info));
  if (flag_info.is_default) {
    // --function_name is the one that was passed, check that it's known
    auto const maybe_entry = std::find_if(
        std::begin(kFunctionNames), std::end(kFunctionNames),
        [](decltype(kFunctionNames)::value_type item){
          return item.second == FLAGS_function_name;
        });
    if (maybe_entry == std::end(kFunctionNames)) {
      LOG(FATAL) << "Unknown Modbus function name '" << FLAGS_function_name <<
          "' passed via --function_name, cannot continue!";
    } else {
      return maybe_entry->first;
    }
  } else {
    // --function_code was passed, check that --function_name wasn't
    // inadvertently given as well.
    assert(google::GetCommandLineFlagInfo("function_name", &flag_info));
    if (!flag_info.is_default) {
      LOG(FATAL) << "Modbus function code '" << FLAGS_function_code <<
          "' passed via --function_code and function name '" <<
          FLAGS_function_name << "' passed via --function_name disagree, "
          "cannot continue!";
    } else {
      // Everything is fine, return the value.
      return static_cast<uint8_t>(FLAGS_function_code);
    }
  }
  // Unreachable.
  assert(false);
  return 0;
}

static uint16_t FigureOutAddress(uint8_t function) {
  struct google::CommandLineFlagInfo flag_info;

  switch (function) {
    case MODBUS_FC_READ_COILS:
    case MODBUS_FC_READ_DISCRETE_INPUTS:
      assert(google::GetCommandLineFlagInfo(
          "request_read_bits_address", &flag_info));
      if (flag_info.is_default) {
        LOG(FATAL) << "Modbus functions 1 and 2 require "
            "--request_read_bits_address, cannot continue!";
      } else {
        return FLAGS_request_read_bits_address;
      }
      break;
    case MODBUS_FC_READ_HOLDING_REGISTERS:
    case MODBUS_FC_READ_INPUT_REGISTERS:
      assert(google::GetCommandLineFlagInfo(
          "request_read_registers_address", &flag_info));
      if (flag_info.is_default) {
        LOG(FATAL) << "Modbus functions 3 and 4 require "
            "--request_read_registers_address, cannot continue!";
      } else {
        return FLAGS_request_read_registers_address;
      }
      break;
    case MODBUS_FC_WRITE_SINGLE_COIL:
    case MODBUS_FC_WRITE_MULTIPLE_COILS:
      assert(google::GetCommandLineFlagInfo(
          "request_write_bits_address", &flag_info));
      if (flag_info.is_default) {
        LOG(FATAL) << "Modbus functions 5 and 15 require "
            "--request_write_bits_address, cannot continue!";
      } else {
        return FLAGS_request_write_bits_address;
      }
      break;
    case MODBUS_FC_WRITE_AND_READ_REGISTERS:
      assert(google::GetCommandLineFlagInfo(
          "request_read_registers_address", &flag_info));
      if (flag_info.is_default) {
        LOG(FATAL) << "Modbus function 23 requires "
            "--request_read_registers_address, cannot continue!";
      }
      // Fallthrough to checking the write side. We can only return one address
      // so the code that sends the actual transaction will directly look at the
      // flag for the READ side.
    case MODBUS_FC_WRITE_SINGLE_REGISTER:
    case MODBUS_FC_WRITE_MULTIPLE_REGISTERS:
    case MODBUS_FC_MASK_WRITE_REGISTER:
      assert(google::GetCommandLineFlagInfo(
          "request_write_registers_address", &flag_info));
      if (flag_info.is_default) {
        LOG(FATAL) << "Modbus functions 6, 16, 22 and 23 require "
            "--request_write_registers_address, cannot continue!";
      } else {
        return FLAGS_request_write_registers_address;
      }
      break;
  }
  // Unreachable
  assert(false);
  return 0;
}

static uint8_t FigureOutCount(uint8_t function) {
  switch (function) {
    case MODBUS_FC_READ_COILS:
    case MODBUS_FC_READ_DISCRETE_INPUTS:
      return FLAGS_request_read_bits_count;
    case MODBUS_FC_READ_HOLDING_REGISTERS:
    case MODBUS_FC_READ_INPUT_REGISTERS:
      return FLAGS_request_read_registers_count;
    case MODBUS_FC_WRITE_MULTIPLE_COILS:
      return std::count(std::begin(FLAGS_request_write_bits_data),
                        std::end(FLAGS_request_write_bits_data), ',') + 1;
    case MODBUS_FC_WRITE_MULTIPLE_REGISTERS:
    case MODBUS_FC_WRITE_AND_READ_REGISTERS:
      // We can only return one count so the code that sends the actual
      // transaction will directly look at the flag for the READ side.
      return std::count(std::begin(FLAGS_request_write_registers_data),
                        std::end(FLAGS_request_write_registers_data), ',') + 1;
  }
  // Unreachable
  assert(false);
  return 0;
}

static void *AssembleData(uint8_t function, uint16_t count) {
  std::stringstream as_stream;
  std::string one_component;
  uint16_t parsed_count = 0;

  switch (function) {
    case MODBUS_FC_READ_COILS:
    case MODBUS_FC_READ_DISCRETE_INPUTS:
      bit_buffer.reset(new uint8_t[count]);
      return bit_buffer.get();
    case MODBUS_FC_READ_HOLDING_REGISTERS:
    case MODBUS_FC_READ_INPUT_REGISTERS:
      register_buffer.reset(new uint16_t[count]);
      return register_buffer.get();
    case MODBUS_FC_WRITE_MULTIPLE_COILS:
      bit_buffer.reset(new uint8_t[count]);
      as_stream.str(FLAGS_request_write_bits_data);
      while (!as_stream.eof() && parsed_count++ < count) {
        std::getline(as_stream, one_component, ',');
        if (one_component == "1") {
          bit_buffer[parsed_count] = TRUE;
        } else if (one_component == "0") {
          bit_buffer[parsed_count] = FALSE;
        } else {
          LOG(FATAL) << "Error parsing component " << parsed_count + 1 <<
              " of --request_write_bits_data (" << one_component << ") as a "
              "boolean value, cannot continue!";
        }
      }
      return bit_buffer.get();
    case MODBUS_FC_WRITE_MULTIPLE_REGISTERS:
    case MODBUS_FC_WRITE_AND_READ_REGISTERS:
      register_buffer.reset(new uint16_t[count]);
      as_stream.str(FLAGS_request_write_registers_data);
      while (!as_stream.eof() && parsed_count++ < count) {
        std::getline(as_stream, one_component, ',');
        register_buffer[parsed_count] = static_cast<uint16_t>(std::stoul(
            one_component, nullptr, 0));
      }
      return register_buffer.get();
  }
  // Unreachable
  assert(false);
  return nullptr;
}

int main(int argc, char *argv[]) {
  google::InitGoogleLogging(argv[0]);
  google::InstallFailureSignalHandler();
  gflags::SetVersionString("1.5");
  gflags::SetUsageMessage("Modbus-TCP Test Client");
  (void) gflags::ParseCommandLineFlags(&argc, &argv, true);

  if (FLAGS_help_functions) {
    ListFunctions();

    return 0;
  }

  modbus_function = FigureOutFunctionOrDie();
  modbus_address = FigureOutAddress(modbus_function);
  if (modbus_function != MODBUS_FC_WRITE_SINGLE_COIL &&
      modbus_function != MODBUS_FC_WRITE_SINGLE_REGISTER &&
      modbus_function != MODBUS_FC_MASK_WRITE_REGISTER) {
    modbus_count = FigureOutCount(modbus_function);
  }

  ctx = modbus_new_tcp_pi(
      FLAGS_gateway_address.c_str(), FLAGS_gateway_port.c_str());
  if (modbus_connect(ctx) == -1) {
    LOG(FATAL) << "Connection failed: " << modbus_strerror(errno);
  }
  modbus_set_slave(ctx, FLAGS_slave_address);

  switch (modbus_function) {
    case MODBUS_FC_READ_COILS:
      if (modbus_read_bits(
          ctx, modbus_address, modbus_count,
          reinterpret_cast<uint8_t *>(AssembleData(
              modbus_function, modbus_count))) == -1) {
        LOG(ERROR) << "Error issuing " << kFunctionNames.at(modbus_function) <<
            " to slave " << FLAGS_slave_address << ": " <<
            modbus_strerror(errno);
      } else {
        for (uint16_t index = 0; index < modbus_count; index++) {
          std::cout << static_cast<int>(bit_buffer[index]);
          if (index < modbus_count - 1) {
            std::cout << ',';
          }
        }
        std::cout << std::endl;
      }
      break;
    case MODBUS_FC_READ_DISCRETE_INPUTS:
      if (modbus_read_input_bits(
          ctx, modbus_address, modbus_count,
          reinterpret_cast<uint8_t *>(AssembleData(
              modbus_function, modbus_count))) == -1) {
        LOG(ERROR) << "Error issuing " << kFunctionNames.at(modbus_function) <<
            " to slave " << FLAGS_slave_address << ": " <<
            modbus_strerror(errno);
      } else {
        for (uint16_t index = 0; index < modbus_count; index++) {
          std::cout << static_cast<int>(bit_buffer[index]);
          if (index < modbus_count - 1) {
            std::cout << ',';
          }
        }
        std::cout << std::endl;
      }
      break;
    case MODBUS_FC_READ_HOLDING_REGISTERS:
      if (modbus_read_registers(
          ctx, modbus_address, modbus_count,
          reinterpret_cast<uint16_t *>(AssembleData(
              modbus_function, modbus_count))) == -1) {
        LOG(ERROR) << "Error issuing " << kFunctionNames.at(modbus_function) <<
            " to slave " << FLAGS_slave_address << ": " <<
            modbus_strerror(errno);
      } else {
        for (uint16_t index = 0; index < modbus_count; index++) {
          std::cout << "0x" << std::hex << std::uppercase << std::setw(4) <<
              std::setfill('0') << register_buffer[index];
          if (index < modbus_count - 1) {
            std::cout << ',';
          }
        }
        std::cout << std::endl;
      }
      break;
    case MODBUS_FC_READ_INPUT_REGISTERS:
      if (modbus_read_input_registers(
          ctx, modbus_address, modbus_count,
          reinterpret_cast<uint16_t *>(AssembleData(
              modbus_function, modbus_count))) == -1) {
        LOG(ERROR) << "Error issuing " << kFunctionNames.at(modbus_function) <<
            " to slave " << FLAGS_slave_address << ": " <<
            modbus_strerror(errno);
      } else {
        for (uint16_t index = 0; index < modbus_count; index++) {
          std::cout << "0x" << std::hex << std::uppercase << std::setw(4) <<
              std::setfill('0') << register_buffer[index];
          if (index < modbus_count - 1) {
            std::cout << ',';
          }
        }
        std::cout << std::endl;
      }
      break;
    case MODBUS_FC_WRITE_SINGLE_COIL:
      if (modbus_write_bit(
          ctx, modbus_address, FLAGS_request_write_bit_value) == -1) {
        LOG(ERROR) << "Error issuing " << kFunctionNames.at(modbus_function) <<
            " to slave " << FLAGS_slave_address << ": " <<
            modbus_strerror(errno);
      }
      break;
    case MODBUS_FC_WRITE_SINGLE_REGISTER:
      if (modbus_write_register(
          ctx, modbus_address,
          std::stoul(FLAGS_request_write_registers_data, nullptr, 0)) == -1) {
        LOG(ERROR) << "Error issuing " << kFunctionNames.at(modbus_function) <<
            " to slave " << FLAGS_slave_address << ": " <<
            modbus_strerror(errno);
      }
      break;
    case MODBUS_FC_WRITE_MULTIPLE_COILS:
      if (modbus_write_bits(
          ctx, modbus_address, modbus_count,
          reinterpret_cast<uint8_t *>(AssembleData(
              modbus_function, modbus_count))) == -1) {
        LOG(ERROR) << "Error issuing " << kFunctionNames.at(modbus_function) <<
            " to slave " << FLAGS_slave_address << ": " <<
            modbus_strerror(errno);
      }
      break;
    case MODBUS_FC_WRITE_MULTIPLE_REGISTERS:
      if (modbus_write_registers(
          ctx, modbus_address, modbus_count,
          reinterpret_cast<uint16_t *>(AssembleData(
              modbus_function, modbus_count))) == -1) {
        LOG(ERROR) << "Error issuing " << kFunctionNames.at(modbus_function) <<
            " to slave " << FLAGS_slave_address << ": " <<
            modbus_strerror(errno);
      }
      break;
    case MODBUS_FC_MASK_WRITE_REGISTER:
      if (modbus_mask_write_register(
          ctx, modbus_address, FLAGS_request_rmw_register_and,
          FLAGS_request_rmw_register_or) == -1) {
        LOG(ERROR) << "Error issuing " << kFunctionNames.at(modbus_function) <<
            " to slave " << FLAGS_slave_address << ": " <<
            modbus_strerror(errno);
      }
      break;
    case MODBUS_FC_WRITE_AND_READ_REGISTERS:
      wr_pointer = reinterpret_cast<uint16_t *>(AssembleData(
          modbus_function, std::max(
              modbus_count,
              static_cast<uint16_t>(FLAGS_request_read_registers_count))));
      if (modbus_write_and_read_registers(
          ctx, modbus_address, modbus_count, wr_pointer,
          FLAGS_request_read_registers_address,
          FLAGS_request_read_registers_count, wr_pointer) == -1) {
        LOG(ERROR) << "Error issuing " << kFunctionNames.at(modbus_function) <<
            " to slave " << FLAGS_slave_address << ": " <<
            modbus_strerror(errno);
      }
      break;
  }

  modbus_close(ctx);
  modbus_free(ctx);
}
