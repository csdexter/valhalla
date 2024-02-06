<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.0.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting keepoldvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<description>&lt;b&gt;Structured Cabling&lt;/b&gt;
&lt;p&gt;&lt;i&gt;Operation "Valhalla"&lt;/i&gt;&lt;br /&gt;
CLASSIFIED: SECRET, NEED-TO-KNOW-ONLY&lt;/p&gt;
&lt;p&gt;This is the schematic of the structured cabling network, it tries to mimic the physical placement of all components in an attempt to provide the data for conduit loading.&lt;/p&gt;</description>
<libraries>
<library name="automotive">
<description>This library is mainly documentation-oriented, i.e. contains only symbols. It is meant for drawing automotive schematics.</description>
<packages>
</packages>
<symbols>
<symbol name="SPADEF_TERMINAL">
<description>Spade terminal, female part (the one into which the spade goes)</description>
<pin name="P$1" x="-10.16" y="0" visible="off" length="middle" direction="sup"/>
<wire x1="-5.08" y1="0" x2="-2.54" y2="1.905" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-2.54" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-2.54" y1="1.905" x2="0" y2="1.905" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.254" layer="94"/>
<text x="0" y="5.08" size="1.778" layer="95" rot="R180">&gt;NAME</text>
</symbol>
<symbol name="SCREW_TERMINAL">
<description>Screw terminal, the half with the screw or into which the screw threads</description>
<pin name="P$1" x="-7.62" y="0" visible="off" length="middle" direction="sup"/>
<circle x="0" y="0" radius="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<text x="-10.16" y="2.54" size="1.778" layer="95">&gt;NAME</text>
</symbol>
<symbol name="RING_TERMINAL">
<description>Screw terminal, the half with the ring terminal that goes on the screw</description>
<pin name="P$1" x="7.62" y="0" visible="off" length="middle" direction="sup" rot="R180"/>
<wire x1="0" y1="3.175" x2="0" y2="-3.175" width="0.254" layer="94" curve="-180"/>
<text x="2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SPADEF_250" prefix="J">
<gates>
<gate name="F" symbol="SPADEF_TERMINAL" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BOLT_ON_CONNECTOR" prefix="J" uservalue="yes">
<description>Bolt on connector, where you connect two conductors via a screw and ring terminal arrangement.</description>
<gates>
<gate name="SCREW" symbol="SCREW_TERMINAL" x="0" y="0"/>
<gate name="RING" symbol="RING_TERMINAL" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X01">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" shape="octagon"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="PINHD1">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="-6.35" y2="2.54" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="2.54" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X1" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X01">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="J1" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J2" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J3" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J4" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J5" library="automotive" deviceset="BOLT_ON_CONNECTOR" device=""/>
<part name="J6" library="automotive" deviceset="BOLT_ON_CONNECTOR" device=""/>
<part name="J7" library="automotive" deviceset="BOLT_ON_CONNECTOR" device=""/>
<part name="J8" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J9" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J10" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J11" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J12" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J13" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J14" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J15" library="automotive" deviceset="BOLT_ON_CONNECTOR" device=""/>
<part name="J16" library="automotive" deviceset="BOLT_ON_CONNECTOR" device=""/>
<part name="J17" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J18" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J19" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J20" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J21" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J22" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J23" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J24" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J25" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="JP1" library="pinhead" deviceset="PINHD-1X1" device=""/>
<part name="JP2" library="pinhead" deviceset="PINHD-1X1" device=""/>
<part name="JP3" library="pinhead" deviceset="PINHD-1X1" device=""/>
<part name="JP5" library="pinhead" deviceset="PINHD-1X1" device=""/>
<part name="JP6" library="pinhead" deviceset="PINHD-1X1" device=""/>
<part name="JP4" library="pinhead" deviceset="PINHD-1X1" device=""/>
<part name="JP7" library="pinhead" deviceset="PINHD-1X1" device=""/>
<part name="J26" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J27" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J28" library="automotive" deviceset="BOLT_ON_CONNECTOR" device=""/>
<part name="J29" library="automotive" deviceset="BOLT_ON_CONNECTOR" device=""/>
<part name="J30" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="J31" library="automotive" deviceset="SPADEF_250" device=""/>
<part name="JP8" library="pinhead" deviceset="PINHD-1X1" device=""/>
<part name="JP9" library="pinhead" deviceset="PINHD-1X1" device=""/>
<part name="J32" library="automotive" deviceset="BOLT_ON_CONNECTOR" device=""/>
<part name="J33" library="automotive" deviceset="BOLT_ON_CONNECTOR" device=""/>
<part name="J34" library="automotive" deviceset="SPADEF_250" device=""/>
</parts>
<sheets>
<sheet>
<description>&lt;b&gt;Ground Floor&lt;/b&gt;</description>
<plain>
<text x="322.58" y="15.24" size="1.778" layer="94">From the ISP,
outside the house</text>
<text x="302.26" y="134.62" size="1.778" layer="94">Office</text>
<text x="276.86" y="38.1" size="1.778" layer="94">Hallway</text>
<text x="223.52" y="7.62" size="1.778" layer="94">Storage</text>
<text x="63.5" y="81.28" size="1.778" layer="94">Living</text>
<text x="134.62" y="195.58" size="1.778" layer="94">To 1st Floor</text>
<text x="175.26" y="170.18" size="1.778" layer="94">Kitchen</text>
<wire x1="276.86" y1="40.64" x2="294.64" y2="40.64" width="0.2032" layer="94" style="shortdash"/>
<wire x1="294.64" y1="40.64" x2="320.04" y2="40.64" width="0.2032" layer="94" style="shortdash"/>
<wire x1="320.04" y1="40.64" x2="325.12" y2="40.64" width="0.2032" layer="94" style="shortdash"/>
<wire x1="325.12" y1="40.64" x2="325.12" y2="55.88" width="0.2032" layer="94" style="shortdash"/>
<wire x1="325.12" y1="55.88" x2="322.58" y2="55.88" width="0.2032" layer="94" style="shortdash"/>
<wire x1="322.58" y1="55.88" x2="279.4" y2="55.88" width="0.2032" layer="94" style="shortdash"/>
<wire x1="279.4" y1="55.88" x2="276.86" y2="55.88" width="0.2032" layer="94" style="shortdash"/>
<wire x1="276.86" y1="55.88" x2="276.86" y2="40.64" width="0.2032" layer="94" style="shortdash"/>
<wire x1="276.86" y1="101.6" x2="276.86" y2="99.06" width="0.2032" layer="94" style="shortdash"/>
<wire x1="276.86" y1="99.06" x2="276.86" y2="86.36" width="0.2032" layer="94" style="shortdash"/>
<wire x1="276.86" y1="86.36" x2="276.86" y2="83.82" width="0.2032" layer="94" style="shortdash"/>
<wire x1="276.86" y1="83.82" x2="276.86" y2="73.66" width="0.2032" layer="94" style="shortdash"/>
<wire x1="276.86" y1="73.66" x2="276.86" y2="71.12" width="0.2032" layer="94" style="shortdash"/>
<wire x1="276.86" y1="71.12" x2="279.4" y2="71.12" width="0.2032" layer="94" style="shortdash"/>
<wire x1="279.4" y1="71.12" x2="322.58" y2="71.12" width="0.2032" layer="94" style="shortdash"/>
<wire x1="322.58" y1="71.12" x2="325.12" y2="71.12" width="0.2032" layer="94" style="shortdash"/>
<wire x1="325.12" y1="71.12" x2="325.12" y2="101.6" width="0.2032" layer="94" style="shortdash"/>
<wire x1="325.12" y1="101.6" x2="297.18" y2="101.6" width="0.2032" layer="94" style="shortdash"/>
<wire x1="297.18" y1="101.6" x2="281.94" y2="101.6" width="0.2032" layer="94" style="shortdash"/>
<wire x1="281.94" y1="101.6" x2="276.86" y2="101.6" width="0.2032" layer="94" style="shortdash"/>
<wire x1="279.4" y1="144.78" x2="299.72" y2="144.78" width="0.2032" layer="94" style="dashdot"/>
<wire x1="299.72" y1="144.78" x2="299.72" y2="127" width="0.2032" layer="94" style="dashdot"/>
<wire x1="299.72" y1="127" x2="297.18" y2="127" width="0.2032" layer="94" style="shortdash"/>
<wire x1="297.18" y1="127" x2="281.94" y2="127" width="0.2032" layer="94" style="dashdot"/>
<wire x1="281.94" y1="127" x2="279.4" y2="127" width="0.2032" layer="94" style="shortdash"/>
<wire x1="279.4" y1="127" x2="279.4" y2="144.78" width="0.2032" layer="94" style="dashdot"/>
<wire x1="172.72" y1="162.56" x2="172.72" y2="180.34" width="0.2032" layer="94" style="dashdot"/>
<wire x1="172.72" y1="180.34" x2="152.4" y2="180.34" width="0.2032" layer="94" style="dashdot"/>
<wire x1="152.4" y1="180.34" x2="152.4" y2="162.56" width="0.2032" layer="94" style="dashdot"/>
<wire x1="152.4" y1="162.56" x2="154.94" y2="162.56" width="0.2032" layer="94" style="shortdash"/>
<wire x1="154.94" y1="162.56" x2="170.18" y2="162.56" width="0.2032" layer="94" style="dashdot"/>
<wire x1="170.18" y1="162.56" x2="172.72" y2="162.56" width="0.2032" layer="94" style="shortdash"/>
<wire x1="198.12" y1="27.94" x2="200.66" y2="27.94" width="0.2032" layer="94" style="shortdash"/>
<wire x1="200.66" y1="27.94" x2="228.6" y2="27.94" width="0.2032" layer="94" style="shortdash"/>
<wire x1="228.6" y1="27.94" x2="231.14" y2="27.94" width="0.2032" layer="94" style="shortdash"/>
<wire x1="231.14" y1="27.94" x2="259.08" y2="27.94" width="0.2032" layer="94" style="shortdash"/>
<wire x1="259.08" y1="27.94" x2="261.62" y2="27.94" width="0.2032" layer="94" style="shortdash"/>
<wire x1="261.62" y1="27.94" x2="261.62" y2="10.16" width="0.2032" layer="94" style="shortdash"/>
<wire x1="261.62" y1="10.16" x2="198.12" y2="10.16" width="0.2032" layer="94" style="shortdash"/>
<wire x1="198.12" y1="10.16" x2="198.12" y2="27.94" width="0.2032" layer="94" style="shortdash"/>
<wire x1="96.52" y1="111.76" x2="78.74" y2="111.76" width="0.2032" layer="94" style="shortdash"/>
<wire x1="78.74" y1="111.76" x2="78.74" y2="81.28" width="0.2032" layer="94" style="shortdash"/>
<wire x1="78.74" y1="81.28" x2="96.52" y2="81.28" width="0.2032" layer="94" style="shortdash"/>
<wire x1="55.88" y1="93.98" x2="55.88" y2="111.76" width="0.2032" layer="94" style="shortdash"/>
<wire x1="55.88" y1="111.76" x2="38.1" y2="111.76" width="0.2032" layer="94" style="shortdash"/>
<wire x1="38.1" y1="111.76" x2="38.1" y2="93.98" width="0.2032" layer="94" style="shortdash"/>
<wire x1="38.1" y1="93.98" x2="40.64" y2="93.98" width="0.2032" layer="94" style="shortdash"/>
<wire x1="40.64" y1="93.98" x2="53.34" y2="93.98" width="0.2032" layer="94" style="shortdash"/>
<wire x1="53.34" y1="93.98" x2="55.88" y2="93.98" width="0.2032" layer="94" style="shortdash"/>
<wire x1="96.52" y1="81.28" x2="96.52" y2="83.82" width="0.2032" layer="94" style="shortdash"/>
<wire x1="96.52" y1="83.82" x2="96.52" y2="109.22" width="0.2032" layer="94" style="shortdash"/>
<wire x1="96.52" y1="109.22" x2="96.52" y2="111.76" width="0.2032" layer="94" style="shortdash"/>
<text x="320.04" y="104.14" size="1.778" layer="94">B45</text>
<wire x1="279.4" y1="71.12" x2="279.4" y2="55.88" width="0.2032" layer="94" style="longdash"/>
<wire x1="322.58" y1="71.12" x2="322.58" y2="55.88" width="0.2032" layer="94" style="longdash"/>
<text x="327.66" y="48.26" size="1.778" layer="94">E36</text>
<wire x1="261.62" y1="50.8" x2="261.62" y2="73.66" width="0.2032" layer="94" style="shortdash"/>
<wire x1="261.62" y1="73.66" x2="261.62" y2="83.82" width="0.2032" layer="94" style="shortdash"/>
<wire x1="261.62" y1="83.82" x2="261.62" y2="86.36" width="0.2032" layer="94" style="shortdash"/>
<wire x1="261.62" y1="86.36" x2="261.62" y2="99.06" width="0.2032" layer="94" style="shortdash"/>
<wire x1="261.62" y1="99.06" x2="261.62" y2="101.6" width="0.2032" layer="94" style="shortdash"/>
<wire x1="261.62" y1="101.6" x2="198.12" y2="101.6" width="0.2032" layer="94" style="shortdash"/>
<wire x1="198.12" y1="101.6" x2="198.12" y2="99.06" width="0.2032" layer="94" style="shortdash"/>
<wire x1="198.12" y1="99.06" x2="198.12" y2="86.36" width="0.2032" layer="94" style="shortdash"/>
<wire x1="198.12" y1="86.36" x2="198.12" y2="71.12" width="0.2032" layer="94" style="shortdash"/>
<wire x1="198.12" y1="71.12" x2="198.12" y2="58.42" width="0.2032" layer="94" style="shortdash"/>
<wire x1="198.12" y1="58.42" x2="198.12" y2="50.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="198.12" y1="50.8" x2="200.66" y2="50.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="200.66" y1="50.8" x2="228.6" y2="50.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="228.6" y1="50.8" x2="231.14" y2="50.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="231.14" y1="50.8" x2="259.08" y2="50.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="259.08" y1="50.8" x2="261.62" y2="50.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="132.08" y1="111.76" x2="134.62" y2="111.76" width="0.2032" layer="94" style="shortdash"/>
<wire x1="134.62" y1="111.76" x2="149.86" y2="111.76" width="0.2032" layer="94" style="shortdash"/>
<wire x1="149.86" y1="111.76" x2="154.94" y2="111.76" width="0.2032" layer="94" style="shortdash"/>
<wire x1="154.94" y1="111.76" x2="170.18" y2="111.76" width="0.2032" layer="94" style="shortdash"/>
<wire x1="170.18" y1="111.76" x2="172.72" y2="111.76" width="0.2032" layer="94" style="shortdash"/>
<wire x1="172.72" y1="111.76" x2="172.72" y2="99.06" width="0.2032" layer="94" style="shortdash"/>
<wire x1="172.72" y1="99.06" x2="172.72" y2="86.36" width="0.2032" layer="94" style="shortdash"/>
<wire x1="172.72" y1="86.36" x2="172.72" y2="71.12" width="0.2032" layer="94" style="shortdash"/>
<wire x1="172.72" y1="71.12" x2="172.72" y2="58.42" width="0.2032" layer="94" style="shortdash"/>
<wire x1="172.72" y1="58.42" x2="172.72" y2="50.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="172.72" y1="50.8" x2="132.08" y2="50.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="132.08" y1="50.8" x2="132.08" y2="53.34" width="0.2032" layer="94" style="shortdash"/>
<wire x1="132.08" y1="53.34" x2="132.08" y2="66.04" width="0.2032" layer="94" style="shortdash"/>
<wire x1="132.08" y1="66.04" x2="132.08" y2="83.82" width="0.2032" layer="94" style="shortdash"/>
<wire x1="132.08" y1="83.82" x2="132.08" y2="109.22" width="0.2032" layer="94" style="shortdash"/>
<wire x1="132.08" y1="109.22" x2="132.08" y2="111.76" width="0.2032" layer="94" style="shortdash"/>
<wire x1="297.18" y1="101.6" x2="297.18" y2="127" width="0.2032" layer="94" style="longdash"/>
<wire x1="281.94" y1="101.6" x2="281.94" y2="127" width="0.2032" layer="94" style="longdash"/>
<wire x1="276.86" y1="99.06" x2="261.62" y2="99.06" width="0.2032" layer="94" style="longdash"/>
<wire x1="276.86" y1="86.36" x2="261.62" y2="86.36" width="0.2032" layer="94" style="longdash"/>
<wire x1="200.66" y1="50.8" x2="200.66" y2="27.94" width="0.2032" layer="94" style="longdash"/>
<wire x1="198.12" y1="99.06" x2="172.72" y2="99.06" width="0.2032" layer="94" style="longdash"/>
<wire x1="172.72" y1="58.42" x2="198.12" y2="58.42" width="0.2032" layer="94" style="longdash"/>
<wire x1="96.52" y1="109.22" x2="132.08" y2="109.22" width="0.2032" layer="94" style="longdash"/>
<text x="243.84" y="104.14" size="1.778" layer="94">B46</text>
<wire x1="320.04" y1="40.64" x2="320.04" y2="20.32" width="0.2032" layer="94" style="longdash"/>
<wire x1="294.64" y1="40.64" x2="294.64" y2="20.32" width="0.2032" layer="94" style="longdash"/>
<text x="172.72" y="114.3" size="1.778" layer="94">B47</text>
<wire x1="134.62" y1="172.72" x2="134.62" y2="111.76" width="0.2032" layer="94" style="longdash"/>
<wire x1="149.86" y1="111.76" x2="149.86" y2="172.72" width="0.2032" layer="94" style="longdash"/>
<wire x1="172.72" y1="71.12" x2="198.12" y2="71.12" width="0.2032" layer="94" style="longdash"/>
<wire x1="172.72" y1="86.36" x2="198.12" y2="86.36" width="0.2032" layer="94" style="longdash"/>
<wire x1="228.6" y1="50.8" x2="228.6" y2="27.94" width="0.2032" layer="94" style="longdash"/>
<wire x1="231.14" y1="50.8" x2="231.14" y2="27.94" width="0.2032" layer="94" style="longdash"/>
<wire x1="259.08" y1="50.8" x2="259.08" y2="27.94" width="0.2032" layer="94" style="longdash"/>
<wire x1="96.52" y1="83.82" x2="132.08" y2="83.82" width="0.2032" layer="94" style="longdash"/>
<text x="91.44" y="114.3" size="1.778" layer="94">E37</text>
<text x="40.64" y="114.3" size="1.778" layer="94">E38</text>
<text x="254" y="175.26" size="1.778" layer="94">CATV circuit
(RG-6/U cable &amp;
IEC 60169-24 connectors)</text>
<text x="254" y="162.56" size="1.778" layer="94">DATA circuit
(Cat6 cable &amp;
RJ45 termination)</text>
<text x="254" y="149.86" size="1.778" layer="94">Thermostat circuit
(H03VVH2-F/LiYCY cable
with bare ends)</text>
<text x="332.74" y="38.1" size="1.778" layer="94">Hallway thermostat mounted
immediately adjacent to E36</text>
<text x="264.16" y="17.78" size="1.778" layer="94">E40</text>
<text x="254" y="187.96" size="1.778" layer="94">RF circuit
(LMR-240 cable &amp;
BNC 50Ohm connectors)</text>
<wire x1="91.44" y1="50.8" x2="91.44" y2="53.34" width="0.2032" layer="94" style="shortdash"/>
<wire x1="91.44" y1="53.34" x2="91.44" y2="66.04" width="0.2032" layer="94" style="shortdash"/>
<wire x1="91.44" y1="66.04" x2="91.44" y2="68.58" width="0.2032" layer="94" style="shortdash"/>
<wire x1="91.44" y1="68.58" x2="81.28" y2="68.58" width="0.2032" layer="94" style="shortdash"/>
<wire x1="81.28" y1="68.58" x2="81.28" y2="66.04" width="0.2032" layer="94" style="shortdash"/>
<wire x1="81.28" y1="66.04" x2="81.28" y2="55.88" width="0.2032" layer="94" style="shortdash"/>
<wire x1="81.28" y1="55.88" x2="81.28" y2="50.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="81.28" y1="50.8" x2="83.82" y2="50.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="83.82" y1="50.8" x2="88.9" y2="50.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="88.9" y1="50.8" x2="91.44" y2="50.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="55.88" y1="68.58" x2="55.88" y2="66.04" width="0.2032" layer="94" style="shortdash"/>
<wire x1="55.88" y1="66.04" x2="55.88" y2="55.88" width="0.2032" layer="94" style="shortdash"/>
<wire x1="55.88" y1="55.88" x2="55.88" y2="53.34" width="0.2032" layer="94" style="shortdash"/>
<wire x1="55.88" y1="53.34" x2="38.1" y2="53.34" width="0.2032" layer="94" style="shortdash"/>
<wire x1="38.1" y1="53.34" x2="38.1" y2="55.88" width="0.2032" layer="94" style="shortdash"/>
<wire x1="38.1" y1="55.88" x2="38.1" y2="60.96" width="0.2032" layer="94" style="shortdash"/>
<wire x1="38.1" y1="60.96" x2="38.1" y2="68.58" width="0.2032" layer="94" style="shortdash"/>
<wire x1="38.1" y1="68.58" x2="40.64" y2="68.58" width="0.2032" layer="94" style="shortdash"/>
<wire x1="40.64" y1="68.58" x2="53.34" y2="68.58" width="0.2032" layer="94" style="shortdash"/>
<wire x1="53.34" y1="68.58" x2="55.88" y2="68.58" width="0.2032" layer="94" style="shortdash"/>
<wire x1="91.44" y1="53.34" x2="132.08" y2="53.34" width="0.2032" layer="94" style="longdash"/>
<wire x1="91.44" y1="66.04" x2="132.08" y2="66.04" width="0.2032" layer="94" style="longdash"/>
<wire x1="81.28" y1="66.04" x2="55.88" y2="66.04" width="0.2032" layer="94" style="longdash"/>
<wire x1="55.88" y1="55.88" x2="81.28" y2="55.88" width="0.2032" layer="94" style="longdash"/>
<wire x1="88.9" y1="50.8" x2="88.9" y2="30.48" width="0.2032" layer="94" style="longdash"/>
<wire x1="83.82" y1="50.8" x2="83.82" y2="30.48" width="0.2032" layer="94" style="longdash"/>
<wire x1="53.34" y1="68.58" x2="53.34" y2="93.98" width="0.2032" layer="94" style="longdash"/>
<wire x1="40.64" y1="68.58" x2="40.64" y2="93.98" width="0.2032" layer="94" style="longdash"/>
<wire x1="38.1" y1="60.96" x2="12.7" y2="60.96" width="0.2032" layer="94" style="longdash"/>
<wire x1="12.7" y1="55.88" x2="38.1" y2="55.88" width="0.2032" layer="94" style="longdash"/>
<text x="91.44" y="71.12" size="1.778" layer="94">B49</text>
<text x="55.88" y="71.12" size="1.778" layer="94">B50</text>
<wire x1="261.62" y1="83.82" x2="276.86" y2="83.82" width="0.2032" layer="94" style="longdash"/>
<wire x1="276.86" y1="73.66" x2="261.62" y2="73.66" width="0.2032" layer="94" style="longdash"/>
<text x="274.32" y="2.54" size="1.778" layer="94">From the Pump Room,
outside the house</text>
<wire x1="172.72" y1="127" x2="170.18" y2="127" width="0.2032" layer="94" style="shortdash"/>
<wire x1="170.18" y1="127" x2="154.94" y2="127" width="0.2032" layer="94" style="shortdash"/>
<wire x1="154.94" y1="127" x2="152.4" y2="127" width="0.2032" layer="94" style="shortdash"/>
<wire x1="152.4" y1="127" x2="152.4" y2="147.32" width="0.2032" layer="94" style="shortdash"/>
<wire x1="152.4" y1="147.32" x2="154.94" y2="147.32" width="0.2032" layer="94" style="shortdash"/>
<wire x1="154.94" y1="147.32" x2="170.18" y2="147.32" width="0.2032" layer="94" style="shortdash"/>
<wire x1="170.18" y1="147.32" x2="172.72" y2="147.32" width="0.2032" layer="94" style="shortdash"/>
<wire x1="172.72" y1="147.32" x2="172.72" y2="144.78" width="0.2032" layer="94" style="shortdash"/>
<wire x1="172.72" y1="144.78" x2="172.72" y2="129.54" width="0.2032" layer="94" style="shortdash"/>
<wire x1="172.72" y1="129.54" x2="172.72" y2="127" width="0.2032" layer="94" style="shortdash"/>
<wire x1="170.18" y1="127" x2="170.18" y2="111.76" width="0.2032" layer="94" style="longdash"/>
<wire x1="154.94" y1="127" x2="154.94" y2="111.76" width="0.2032" layer="94" style="longdash"/>
<wire x1="154.94" y1="162.56" x2="154.94" y2="147.32" width="0.2032" layer="94" style="longdash"/>
<wire x1="170.18" y1="147.32" x2="170.18" y2="162.56" width="0.2032" layer="94" style="longdash"/>
<text x="172.72" y="149.86" size="1.778" layer="94">B51</text>
<wire x1="172.72" y1="144.78" x2="187.96" y2="144.78" width="0.2032" layer="94" style="longdash"/>
<wire x1="172.72" y1="129.54" x2="187.96" y2="129.54" width="0.2032" layer="94" style="longdash"/>
<text x="190.5" y="127" size="1.778" layer="94">To HVAC</text>
</plain>
<instances>
<instance part="J1" gate="F" x="312.42" y="43.18" rot="R270"/>
<instance part="J2" gate="F" x="302.26" y="43.18" rot="R270"/>
<instance part="J3" gate="F" x="241.3" y="15.24" rot="MR270"/>
<instance part="J4" gate="F" x="233.68" y="15.24" rot="MR270"/>
<instance part="J5" gate="SCREW" x="292.1" y="45.72" rot="R270"/>
<instance part="J6" gate="SCREW" x="281.94" y="45.72" rot="R270"/>
<instance part="J7" gate="SCREW" x="86.36" y="86.36" rot="MR0"/>
<instance part="J8" gate="F" x="50.8" y="106.68" rot="MR90"/>
<instance part="J9" gate="F" x="43.18" y="106.68" rot="MR90"/>
<instance part="J10" gate="F" x="226.06" y="15.24" rot="MR270"/>
<instance part="J11" gate="F" x="294.64" y="139.7" rot="MR90"/>
<instance part="J12" gate="F" x="218.44" y="15.24" rot="MR270"/>
<instance part="J13" gate="F" x="210.82" y="15.24" rot="MR270"/>
<instance part="J14" gate="F" x="203.2" y="15.24" rot="MR270"/>
<instance part="J15" gate="SCREW" x="86.36" y="96.52" rot="MR0"/>
<instance part="J16" gate="SCREW" x="86.36" y="106.68" rot="MR0"/>
<instance part="JP1" gate="G$1" x="284.48" y="139.7" rot="R90"/>
<instance part="JP2" gate="G$1" x="347.98" y="45.72"/>
<instance part="JP3" gate="G$1" x="157.48" y="175.26" rot="R90"/>
<instance part="JP5" gate="G$1" x="86.36" y="20.32" rot="MR270"/>
<instance part="J26" gate="F" x="167.64" y="175.26" rot="MR90"/>
<instance part="J27" gate="F" x="248.92" y="15.24" rot="MR270"/>
<instance part="J28" gate="SCREW" x="215.9" y="177.8" rot="MR0"/>
<instance part="J29" gate="SCREW" x="248.92" y="177.8" rot="MR180"/>
<instance part="J30" gate="F" x="213.36" y="165.1" rot="MR0"/>
<instance part="J31" gate="F" x="251.46" y="165.1" rot="MR180"/>
<instance part="JP8" gate="G$1" x="213.36" y="152.4" rot="R180"/>
<instance part="JP9" gate="G$1" x="2.54" y="58.42" rot="MR0"/>
<instance part="J32" gate="SCREW" x="215.9" y="190.5" rot="MR0"/>
<instance part="J33" gate="SCREW" x="248.92" y="190.5" rot="MR180"/>
<instance part="J34" gate="F" x="256.54" y="15.24" rot="MR270"/>
</instances>
<busses>
</busses>
<nets>
<net name="WAN" class="0">
<segment>
<pinref part="J1" gate="F" pin="P$1"/>
<wire x1="312.42" y1="53.34" x2="317.5" y2="53.34" width="0.1524" layer="91"/>
<wire x1="317.5" y1="53.34" x2="317.5" y2="30.48" width="0.1524" layer="91"/>
<wire x1="317.5" y1="30.48" x2="317.5" y2="20.32" width="0.1524" layer="91"/>
<label x="317.5" y="20.32" size="1.778" layer="95" rot="R270" xref="yes"/>
</segment>
</net>
<net name="P$1" class="0">
<segment>
<pinref part="J2" gate="F" pin="P$1"/>
<wire x1="302.26" y1="53.34" x2="302.26" y2="76.2" width="0.1524" layer="91"/>
<wire x1="302.26" y1="76.2" x2="256.54" y2="76.2" width="0.1524" layer="91"/>
<pinref part="J34" gate="F" pin="P$1"/>
<wire x1="256.54" y1="76.2" x2="256.54" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J6" gate="SCREW" pin="P$1"/>
<wire x1="281.94" y1="53.34" x2="281.94" y2="88.9" width="0.1524" layer="91"/>
<wire x1="281.94" y1="88.9" x2="134.62" y2="88.9" width="0.1524" layer="91"/>
<wire x1="134.62" y1="88.9" x2="134.62" y2="86.36" width="0.1524" layer="91"/>
<wire x1="134.62" y1="86.36" x2="93.98" y2="86.36" width="0.1524" layer="91"/>
<pinref part="J7" gate="SCREW" pin="P$1"/>
</segment>
<segment>
<pinref part="J8" gate="F" pin="P$1"/>
<wire x1="50.8" y1="96.52" x2="50.8" y2="63.5" width="0.1524" layer="91"/>
<wire x1="50.8" y1="63.5" x2="210.82" y2="63.5" width="0.1524" layer="91"/>
<pinref part="J13" gate="F" pin="P$1"/>
<wire x1="210.82" y1="25.4" x2="210.82" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J9" gate="F" pin="P$1"/>
<wire x1="43.18" y1="96.52" x2="43.18" y2="60.96" width="0.1524" layer="91"/>
<wire x1="43.18" y1="60.96" x2="203.2" y2="60.96" width="0.1524" layer="91"/>
<pinref part="J14" gate="F" pin="P$1"/>
<wire x1="203.2" y1="60.96" x2="203.2" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J11" gate="F" pin="P$1"/>
<wire x1="294.64" y1="129.54" x2="294.64" y2="81.28" width="0.1524" layer="91"/>
<wire x1="294.64" y1="81.28" x2="251.46" y2="81.28" width="0.1524" layer="91"/>
<pinref part="J3" gate="F" pin="P$1"/>
<wire x1="251.46" y1="81.28" x2="241.3" y2="81.28" width="0.1524" layer="91"/>
<wire x1="241.3" y1="81.28" x2="241.3" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J26" gate="F" pin="P$1"/>
<wire x1="167.64" y1="165.1" x2="167.64" y2="96.52" width="0.1524" layer="91"/>
<wire x1="167.64" y1="96.52" x2="233.68" y2="96.52" width="0.1524" layer="91"/>
<pinref part="J4" gate="F" pin="P$1"/>
<wire x1="233.68" y1="25.4" x2="233.68" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J28" gate="SCREW" pin="P$1"/>
<pinref part="J29" gate="SCREW" pin="P$1"/>
<wire x1="223.52" y1="177.8" x2="241.3" y2="177.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J30" gate="F" pin="P$1"/>
<pinref part="J31" gate="F" pin="P$1"/>
<wire x1="223.52" y1="165.1" x2="241.3" y2="165.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J32" gate="SCREW" pin="P$1"/>
<pinref part="J33" gate="SCREW" pin="P$1"/>
<wire x1="223.52" y1="190.5" x2="241.3" y2="190.5" width="0.1524" layer="91" style="shortdash"/>
</segment>
</net>
<net name="CATV" class="0">
<segment>
<pinref part="J5" gate="SCREW" pin="P$1"/>
<wire x1="292.1" y1="53.34" x2="297.18" y2="53.34" width="0.1524" layer="91"/>
<wire x1="297.18" y1="53.34" x2="297.18" y2="40.64" width="0.1524" layer="91"/>
<wire x1="297.18" y1="40.64" x2="297.18" y2="20.32" width="0.1524" layer="91"/>
<label x="297.18" y="20.32" size="1.778" layer="95" rot="R270" xref="yes"/>
</segment>
</net>
<net name="RF1" class="0">
<segment>
<pinref part="J15" gate="SCREW" pin="P$1"/>
<wire x1="93.98" y1="96.52" x2="139.7" y2="96.52" width="0.1524" layer="91" style="shortdash"/>
<wire x1="139.7" y1="96.52" x2="139.7" y2="172.72" width="0.1524" layer="91" style="shortdash"/>
<label x="139.7" y="172.72" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="RF2" class="0">
<segment>
<pinref part="J16" gate="SCREW" pin="P$1"/>
<wire x1="93.98" y1="106.68" x2="99.06" y2="106.68" width="0.1524" layer="91"/>
<wire x1="99.06" y1="106.68" x2="137.16" y2="106.68" width="0.1524" layer="91"/>
<wire x1="137.16" y1="106.68" x2="137.16" y2="172.72" width="0.1524" layer="91"/>
<label x="137.16" y="172.72" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="1"/>
<wire x1="284.48" y1="137.16" x2="284.48" y2="93.98" width="0.1524" layer="91"/>
<wire x1="284.48" y1="93.98" x2="165.1" y2="93.98" width="0.1524" layer="91"/>
<wire x1="165.1" y1="93.98" x2="165.1" y2="132.08" width="0.1524" layer="91"/>
<wire x1="165.1" y1="132.08" x2="195.58" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="1"/>
<wire x1="157.48" y1="172.72" x2="157.48" y2="142.24" width="0.1524" layer="91"/>
<wire x1="157.48" y1="142.24" x2="195.58" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="1"/>
<wire x1="345.44" y1="45.72" x2="320.04" y2="45.72" width="0.1524" layer="91"/>
<wire x1="320.04" y1="45.72" x2="320.04" y2="91.44" width="0.1524" layer="91"/>
<wire x1="320.04" y1="91.44" x2="167.64" y2="91.44" width="0.1524" layer="91"/>
<wire x1="167.64" y1="91.44" x2="162.56" y2="91.44" width="0.1524" layer="91"/>
<wire x1="162.56" y1="91.44" x2="162.56" y2="134.62" width="0.1524" layer="91"/>
<wire x1="162.56" y1="134.62" x2="195.58" y2="134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="JP5" gate="G$1" pin="1"/>
<wire x1="86.36" y1="22.86" x2="86.36" y2="55.88" width="0.1524" layer="91"/>
<wire x1="86.36" y1="55.88" x2="160.02" y2="55.88" width="0.1524" layer="91"/>
<wire x1="160.02" y1="55.88" x2="160.02" y2="137.16" width="0.1524" layer="91"/>
<wire x1="160.02" y1="137.16" x2="195.58" y2="137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="JP8" gate="G$1" pin="1"/>
<wire x1="215.9" y1="152.4" x2="251.46" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="JP9" gate="G$1" pin="1"/>
<wire x1="5.08" y1="58.42" x2="86.36" y2="58.42" width="0.1524" layer="91"/>
<wire x1="86.36" y1="58.42" x2="157.48" y2="58.42" width="0.1524" layer="91"/>
<wire x1="157.48" y1="58.42" x2="157.48" y2="139.7" width="0.1524" layer="91"/>
<wire x1="157.48" y1="139.7" x2="195.58" y2="139.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ETH1" class="0">
<segment>
<pinref part="J12" gate="F" pin="P$1"/>
<wire x1="218.44" y1="25.4" x2="218.44" y2="66.04" width="0.1524" layer="91"/>
<wire x1="203.2" y1="66.04" x2="144.78" y2="66.04" width="0.1524" layer="91"/>
<wire x1="144.78" y1="66.04" x2="144.78" y2="172.72" width="0.1524" layer="91"/>
<label x="144.78" y="172.72" size="1.778" layer="95" rot="R90" xref="yes"/>
<wire x1="218.44" y1="66.04" x2="203.2" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ETH2" class="0">
<segment>
<wire x1="210.82" y1="68.58" x2="147.32" y2="68.58" width="0.1524" layer="91"/>
<wire x1="147.32" y1="68.58" x2="147.32" y2="172.72" width="0.1524" layer="91"/>
<label x="147.32" y="172.72" size="1.778" layer="95" rot="R90" xref="yes"/>
<pinref part="J10" gate="F" pin="P$1"/>
<wire x1="226.06" y1="25.4" x2="226.06" y2="68.58" width="0.1524" layer="91"/>
<wire x1="226.06" y1="68.58" x2="210.82" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ETH4" class="0">
<segment>
<wire x1="248.92" y1="78.74" x2="307.34" y2="78.74" width="0.1524" layer="91"/>
<wire x1="307.34" y1="78.74" x2="307.34" y2="10.16" width="0.1524" layer="91"/>
<label x="307.34" y="10.16" size="1.778" layer="95" rot="R270" xref="yes"/>
<pinref part="J27" gate="F" pin="P$1"/>
<wire x1="248.92" y1="25.4" x2="248.92" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<description>&lt;b&gt;First Floor&lt;/b&gt;</description>
<plain>
<text x="86.36" y="213.36" size="1.778" layer="94">To Attic</text>
<text x="15.24" y="198.12" size="1.778" layer="94">Bedroom 1</text>
<text x="60.96" y="213.36" size="1.778" layer="94">Bedroom 2</text>
<text x="22.86" y="2.54" size="1.778" layer="94">Master Bedroom</text>
<text x="132.08" y="30.48" size="1.778" layer="94">Hallway</text>
<text x="71.12" y="99.06" size="1.778" layer="94">From Ground Floor</text>
<wire x1="30.48" y1="177.8" x2="30.48" y2="195.58" width="0.2032" layer="94" style="dashdot"/>
<wire x1="30.48" y1="195.58" x2="10.16" y2="195.58" width="0.2032" layer="94" style="dashdot"/>
<wire x1="10.16" y1="195.58" x2="10.16" y2="177.8" width="0.2032" layer="94" style="dashdot"/>
<wire x1="10.16" y1="177.8" x2="12.7" y2="177.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="12.7" y1="177.8" x2="27.94" y2="177.8" width="0.2032" layer="94" style="dashdot"/>
<wire x1="27.94" y1="177.8" x2="30.48" y2="177.8" width="0.2032" layer="94" style="shortdash"/>
<wire x1="76.2" y1="193.04" x2="76.2" y2="210.82" width="0.2032" layer="94" style="dashdot"/>
<wire x1="76.2" y1="210.82" x2="55.88" y2="210.82" width="0.2032" layer="94" style="dashdot"/>
<wire x1="55.88" y1="210.82" x2="55.88" y2="193.04" width="0.2032" layer="94" style="dashdot"/>
<wire x1="55.88" y1="193.04" x2="58.42" y2="193.04" width="0.2032" layer="94" style="shortdash"/>
<wire x1="58.42" y1="193.04" x2="73.66" y2="193.04" width="0.2032" layer="94" style="dashdot"/>
<wire x1="73.66" y1="193.04" x2="76.2" y2="193.04" width="0.2032" layer="94" style="shortdash"/>
<wire x1="142.24" y1="99.06" x2="142.24" y2="96.52" width="0.2032" layer="94" style="shortdash"/>
<wire x1="142.24" y1="96.52" x2="142.24" y2="86.36" width="0.2032" layer="94" style="shortdash"/>
<wire x1="142.24" y1="86.36" x2="142.24" y2="35.56" width="0.2032" layer="94" style="shortdash"/>
<wire x1="142.24" y1="35.56" x2="106.68" y2="35.56" width="0.2032" layer="94" style="shortdash"/>
<wire x1="106.68" y1="35.56" x2="106.68" y2="55.88" width="0.2032" layer="94" style="shortdash"/>
<wire x1="106.68" y1="55.88" x2="106.68" y2="63.5" width="0.2032" layer="94" style="shortdash"/>
<wire x1="106.68" y1="63.5" x2="106.68" y2="99.06" width="0.2032" layer="94" style="shortdash"/>
<wire x1="106.68" y1="99.06" x2="109.22" y2="99.06" width="0.2032" layer="94" style="shortdash"/>
<wire x1="109.22" y1="99.06" x2="121.92" y2="99.06" width="0.2032" layer="94" style="shortdash"/>
<wire x1="121.92" y1="99.06" x2="124.46" y2="99.06" width="0.2032" layer="94" style="shortdash"/>
<wire x1="124.46" y1="99.06" x2="134.62" y2="99.06" width="0.2032" layer="94" style="shortdash"/>
<wire x1="134.62" y1="99.06" x2="142.24" y2="99.06" width="0.2032" layer="94" style="shortdash"/>
<wire x1="43.18" y1="22.86" x2="43.18" y2="5.08" width="0.2032" layer="94" style="dashdot"/>
<wire x1="43.18" y1="5.08" x2="22.86" y2="5.08" width="0.2032" layer="94" style="dashdot"/>
<wire x1="22.86" y1="5.08" x2="22.86" y2="22.86" width="0.2032" layer="94" style="dashdot"/>
<wire x1="22.86" y1="22.86" x2="25.4" y2="22.86" width="0.2032" layer="94" style="shortdash"/>
<wire x1="25.4" y1="22.86" x2="40.64" y2="22.86" width="0.2032" layer="94" style="dashdot"/>
<wire x1="40.64" y1="22.86" x2="43.18" y2="22.86" width="0.2032" layer="94" style="shortdash"/>
<wire x1="101.6" y1="175.26" x2="101.6" y2="172.72" width="0.2032" layer="94" style="shortdash"/>
<wire x1="101.6" y1="172.72" x2="101.6" y2="162.56" width="0.2032" layer="94" style="shortdash"/>
<wire x1="101.6" y1="162.56" x2="101.6" y2="160.02" width="0.2032" layer="94" style="shortdash"/>
<wire x1="101.6" y1="160.02" x2="101.6" y2="147.32" width="0.2032" layer="94" style="shortdash"/>
<wire x1="101.6" y1="147.32" x2="101.6" y2="144.78" width="0.2032" layer="94" style="shortdash"/>
<wire x1="101.6" y1="144.78" x2="93.98" y2="144.78" width="0.2032" layer="94" style="shortdash"/>
<wire x1="93.98" y1="144.78" x2="83.82" y2="144.78" width="0.2032" layer="94" style="shortdash"/>
<wire x1="83.82" y1="144.78" x2="78.74" y2="144.78" width="0.2032" layer="94" style="shortdash"/>
<wire x1="78.74" y1="144.78" x2="73.66" y2="144.78" width="0.2032" layer="94" style="shortdash"/>
<wire x1="73.66" y1="144.78" x2="55.88" y2="144.78" width="0.2032" layer="94" style="shortdash"/>
<wire x1="55.88" y1="144.78" x2="55.88" y2="154.94" width="0.2032" layer="94" style="shortdash"/>
<wire x1="55.88" y1="154.94" x2="55.88" y2="172.72" width="0.2032" layer="94" style="shortdash"/>
<wire x1="55.88" y1="172.72" x2="55.88" y2="175.26" width="0.2032" layer="94" style="shortdash"/>
<wire x1="55.88" y1="175.26" x2="58.42" y2="175.26" width="0.2032" layer="94" style="shortdash"/>
<wire x1="58.42" y1="175.26" x2="73.66" y2="175.26" width="0.2032" layer="94" style="shortdash"/>
<wire x1="73.66" y1="175.26" x2="83.82" y2="175.26" width="0.2032" layer="94" style="shortdash"/>
<wire x1="83.82" y1="175.26" x2="99.06" y2="175.26" width="0.2032" layer="94" style="shortdash"/>
<wire x1="99.06" y1="175.26" x2="101.6" y2="175.26" width="0.2032" layer="94" style="shortdash"/>
<wire x1="106.68" y1="55.88" x2="40.64" y2="55.88" width="0.2032" layer="94" style="longdash"/>
<wire x1="40.64" y1="55.88" x2="40.64" y2="22.86" width="0.2032" layer="94" style="longdash"/>
<wire x1="106.68" y1="63.5" x2="25.4" y2="63.5" width="0.2032" layer="94" style="longdash"/>
<wire x1="25.4" y1="63.5" x2="25.4" y2="22.86" width="0.2032" layer="94" style="longdash"/>
<wire x1="101.6" y1="147.32" x2="109.22" y2="147.32" width="0.2032" layer="94" style="longdash"/>
<wire x1="109.22" y1="147.32" x2="109.22" y2="99.06" width="0.2032" layer="94" style="longdash"/>
<wire x1="101.6" y1="172.72" x2="134.62" y2="172.72" width="0.2032" layer="94" style="longdash"/>
<wire x1="134.62" y1="172.72" x2="134.62" y2="99.06" width="0.2032" layer="94" style="longdash"/>
<wire x1="93.98" y1="144.78" x2="93.98" y2="124.46" width="0.2032" layer="94" style="longdash"/>
<wire x1="73.66" y1="144.78" x2="73.66" y2="124.46" width="0.2032" layer="94" style="longdash"/>
<wire x1="58.42" y1="175.26" x2="58.42" y2="193.04" width="0.2032" layer="94" style="longdash"/>
<wire x1="73.66" y1="175.26" x2="73.66" y2="193.04" width="0.2032" layer="94" style="longdash"/>
<wire x1="27.94" y1="177.8" x2="27.94" y2="172.72" width="0.2032" layer="94" style="longdash"/>
<wire x1="27.94" y1="172.72" x2="55.88" y2="172.72" width="0.2032" layer="94" style="longdash"/>
<wire x1="12.7" y1="177.8" x2="12.7" y2="154.94" width="0.2032" layer="94" style="longdash"/>
<wire x1="12.7" y1="154.94" x2="55.88" y2="154.94" width="0.2032" layer="94" style="longdash"/>
<wire x1="99.06" y1="175.26" x2="99.06" y2="193.04" width="0.2032" layer="94" style="longdash"/>
<wire x1="83.82" y1="175.26" x2="83.82" y2="193.04" width="0.2032" layer="94" style="longdash"/>
<wire x1="142.24" y1="96.52" x2="157.48" y2="96.52" width="0.2032" layer="94" style="longdash"/>
<wire x1="142.24" y1="86.36" x2="157.48" y2="86.36" width="0.2032" layer="94" style="longdash"/>
<wire x1="101.6" y1="160.02" x2="121.92" y2="160.02" width="0.2032" layer="94" style="longdash"/>
<wire x1="121.92" y1="160.02" x2="121.92" y2="99.06" width="0.2032" layer="94" style="longdash"/>
<wire x1="101.6" y1="162.56" x2="124.46" y2="162.56" width="0.2032" layer="94" style="longdash"/>
<wire x1="124.46" y1="162.56" x2="124.46" y2="99.06" width="0.2032" layer="94" style="longdash"/>
<text x="101.6" y="177.8" size="1.778" layer="94">B48</text>
<text x="137.16" y="101.6" size="1.778" layer="94">E39</text>
<text x="160.02" y="83.82" size="1.778" layer="94">To HVAC</text>
</plain>
<instances>
<instance part="J17" gate="F" x="139.7" y="55.88"/>
<instance part="J18" gate="F" x="139.7" y="48.26"/>
<instance part="J19" gate="F" x="139.7" y="63.5"/>
<instance part="J20" gate="F" x="139.7" y="71.12"/>
<instance part="J21" gate="F" x="139.7" y="40.64"/>
<instance part="J22" gate="F" x="71.12" y="205.74" rot="MR90"/>
<instance part="J23" gate="F" x="25.4" y="190.5" rot="MR90"/>
<instance part="J24" gate="F" x="139.7" y="78.74"/>
<instance part="J25" gate="F" x="38.1" y="10.16" rot="R270"/>
<instance part="JP6" gate="G$1" x="15.24" y="190.5" rot="R90"/>
<instance part="JP4" gate="G$1" x="60.96" y="205.74" rot="R90"/>
<instance part="JP7" gate="G$1" x="27.94" y="10.16" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="ETH2" class="0">
<segment>
<wire x1="76.2" y1="121.92" x2="76.2" y2="152.4" width="0.1524" layer="91"/>
<label x="76.2" y="121.92" size="1.778" layer="95" rot="R270" xref="yes"/>
<wire x1="76.2" y1="152.4" x2="114.3" y2="152.4" width="0.1524" layer="91"/>
<wire x1="114.3" y1="152.4" x2="114.3" y2="55.88" width="0.1524" layer="91"/>
<wire x1="114.3" y1="55.88" x2="129.54" y2="55.88" width="0.1524" layer="91"/>
<pinref part="J17" gate="F" pin="P$1"/>
</segment>
</net>
<net name="ETH1" class="0">
<segment>
<wire x1="81.28" y1="121.92" x2="81.28" y2="149.86" width="0.1524" layer="91"/>
<label x="81.28" y="121.92" size="1.778" layer="95" rot="R270" xref="yes"/>
<wire x1="81.28" y1="149.86" x2="111.76" y2="149.86" width="0.1524" layer="91"/>
<wire x1="111.76" y1="149.86" x2="111.76" y2="48.26" width="0.1524" layer="91"/>
<wire x1="111.76" y1="48.26" x2="129.54" y2="48.26" width="0.1524" layer="91"/>
<pinref part="J18" gate="F" pin="P$1"/>
</segment>
</net>
<net name="RF2" class="0">
<segment>
<wire x1="86.36" y1="121.92" x2="86.36" y2="193.04" width="0.1524" layer="91"/>
<label x="86.36" y="121.92" size="1.778" layer="95" rot="R270" xref="yes"/>
<label x="86.36" y="193.04" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="RF1" class="0">
<segment>
<wire x1="91.44" y1="121.92" x2="91.44" y2="193.04" width="0.1524" layer="91" style="shortdash"/>
<label x="91.44" y="121.92" size="1.778" layer="95" rot="R270" xref="yes"/>
<label x="91.44" y="193.04" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="P$1" class="0">
<segment>
<pinref part="J19" gate="F" pin="P$1"/>
<wire x1="129.54" y1="63.5" x2="116.84" y2="63.5" width="0.1524" layer="91"/>
<wire x1="116.84" y1="63.5" x2="116.84" y2="154.94" width="0.1524" layer="91"/>
<wire x1="116.84" y1="154.94" x2="71.12" y2="154.94" width="0.1524" layer="91"/>
<wire x1="71.12" y1="154.94" x2="71.12" y2="195.58" width="0.1524" layer="91"/>
<pinref part="J22" gate="F" pin="P$1"/>
</segment>
<segment>
<pinref part="J20" gate="F" pin="P$1"/>
<wire x1="129.54" y1="71.12" x2="119.38" y2="71.12" width="0.1524" layer="91"/>
<wire x1="119.38" y1="71.12" x2="119.38" y2="157.48" width="0.1524" layer="91"/>
<wire x1="119.38" y1="157.48" x2="25.4" y2="157.48" width="0.1524" layer="91"/>
<wire x1="25.4" y1="157.48" x2="25.4" y2="180.34" width="0.1524" layer="91"/>
<pinref part="J23" gate="F" pin="P$1"/>
</segment>
<segment>
<pinref part="J21" gate="F" pin="P$1"/>
<wire x1="129.54" y1="40.64" x2="109.22" y2="40.64" width="0.1524" layer="91"/>
<wire x1="109.22" y1="40.64" x2="109.22" y2="58.42" width="0.1524" layer="91"/>
<wire x1="109.22" y1="58.42" x2="58.42" y2="58.42" width="0.1524" layer="91"/>
<wire x1="58.42" y1="58.42" x2="38.1" y2="58.42" width="0.1524" layer="91"/>
<wire x1="38.1" y1="58.42" x2="38.1" y2="20.32" width="0.1524" layer="91"/>
<pinref part="J25" gate="F" pin="P$1"/>
</segment>
</net>
<net name="ETH3" class="0">
<segment>
<pinref part="J24" gate="F" pin="P$1"/>
<wire x1="129.54" y1="78.74" x2="127" y2="78.74" width="0.1524" layer="91"/>
<wire x1="127" y1="78.74" x2="127" y2="165.1" width="0.1524" layer="91"/>
<wire x1="127" y1="165.1" x2="96.52" y2="165.1" width="0.1524" layer="91"/>
<wire x1="96.52" y1="165.1" x2="96.52" y2="193.04" width="0.1524" layer="91"/>
<label x="96.52" y="193.04" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="1"/>
<wire x1="60.96" y1="203.2" x2="60.96" y2="167.64" width="0.1524" layer="91"/>
<wire x1="60.96" y1="167.64" x2="129.54" y2="167.64" width="0.1524" layer="91"/>
<wire x1="129.54" y1="167.64" x2="129.54" y2="96.52" width="0.1524" layer="91"/>
<wire x1="129.54" y1="96.52" x2="129.54" y2="91.44" width="0.1524" layer="91"/>
<wire x1="129.54" y1="91.44" x2="170.18" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="JP6" gate="G$1" pin="1"/>
<wire x1="15.24" y1="187.96" x2="15.24" y2="170.18" width="0.1524" layer="91"/>
<wire x1="15.24" y1="170.18" x2="132.08" y2="170.18" width="0.1524" layer="91"/>
<wire x1="132.08" y1="170.18" x2="132.08" y2="96.52" width="0.1524" layer="91"/>
<wire x1="132.08" y1="96.52" x2="132.08" y2="93.98" width="0.1524" layer="91"/>
<wire x1="132.08" y1="93.98" x2="170.18" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="JP7" gate="G$1" pin="1"/>
<wire x1="27.94" y1="12.7" x2="27.94" y2="60.96" width="0.1524" layer="91"/>
<wire x1="27.94" y1="60.96" x2="109.22" y2="60.96" width="0.1524" layer="91"/>
<wire x1="109.22" y1="60.96" x2="109.22" y2="88.9" width="0.1524" layer="91"/>
<wire x1="109.22" y1="88.9" x2="170.18" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
