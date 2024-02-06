#include <atomic>
#include <cerrno>
#include <chrono>
#include <cmath>
#include <csignal>
#include <cstring>
#include <limits>
#include <memory>
#include <thread>

#include <gflags/gflags.h>
#include <glog/logging.h>

#include <modbus/modbus.h>
#include <modbus/modbus-rtu.h>

DEFINE_string(serial_port, "/dev/ttyS1", "Serial port to listen for Modbus-RTU "
              "requests on");
DEFINE_uint64(baud_rate, 19200, "Baud rate to set --serial_port to");
DEFINE_string(parity, "E", "Parity to use on --serial_port: 'O' for odd, 'E' "
              "for even or 'N' for no parity (in which case, 2 stop bits will "
              "be used instead of 1)");
DEFINE_bool(invert_de, false, "Invert the DE signal, i.e. drive low to "
            "transmit (assumed to be connected to RTS)");
DEFINE_uint64(slave_address, 1, "Modbus slave address to respond to");

static const float kInterFrameGapCharacters = 3.5;

static modbus_t *ctx;
static modbus_mapping_t *mapping;
static int request_size;
static std::unique_ptr<uint8_t[]> request_body;
static std::chrono::duration<double> inter_frame_gap;
static std::atomic<bool> should_exit(false);

extern "C" void SigintHandler(int sig) {
  if (sig == SIGINT) {
    should_exit = true;
  }
}

int main(int argc, char *argv[]) {
  google::InitGoogleLogging(argv[0]);
  google::InstallFailureSignalHandler();
  gflags::SetVersionString("1.5");
  gflags::SetUsageMessage("Modbus-RTU Test Server");
  (void) gflags::ParseCommandLineFlags(&argc, &argv, true);

  mapping = modbus_mapping_new(4, 4, 2, 2);
  request_body.reset(new uint8_t[MODBUS_MAX_ADU_LENGTH]);

  double one_bit_us = 1000 * 1000 / FLAGS_baud_rate;
  // 1 start bit, 8 character bits, 1 parity bit and 1 stop bit. The Modbus
  // specification mandates usage of 2 stop bits if no parity is configured,
  // thus keeping the raw character size at 11 bits at all times.
  double one_character_us = one_bit_us * (1 + 8 + 1 +1);
  inter_frame_gap = std::chrono::microseconds(static_cast<uint32_t>(std::ceil(
      one_character_us * kInterFrameGapCharacters)));

 ctx = modbus_new_rtu(
     FLAGS_serial_port.c_str(), FLAGS_baud_rate, FLAGS_parity[0], 8,
     FLAGS_parity == "N" ? 2 : 1);
  // Hardware with embedded switchable RS485 transceivers that actually works
  // and is supported on Linux is extremely rare, so we won't even bother
  // trying. We'll assume this is a bog-standard RS232 port with maybe the RTS
  // line controlling the DE input on an RS485 transceiver.
  modbus_rtu_set_serial_mode(ctx, MODBUS_RTU_RS232);
  modbus_rtu_set_rts(
      ctx, FLAGS_invert_de ? MODBUS_RTU_RTS_DOWN : MODBUS_RTU_RTS_UP);
  modbus_set_slave(ctx, FLAGS_slave_address);

  if (std::signal(SIGINT, SigintHandler) == SIG_ERR) {
    LOG(ERROR) << "Error installing SIGINT handler: " << std::strerror(errno);
  }

  while (!should_exit) {
    request_size = modbus_receive(ctx, request_body.get());
    // By the time we get here, the bus has been idle for the required 3 1/2
    // characters since that's how modbus_receive() detects the end of the
    // request.
    (void)modbus_reply(ctx, request_body.get(), request_size, mapping);
    // This time, however, libmodbus is non-compliant and doesn't wait the
    // requisite guard interval, so we have to do it instead.
    std::this_thread::sleep_for(inter_frame_gap);
  }

  modbus_close(ctx);
  modbus_free(ctx);
  modbus_mapping_free(mapping);
}
