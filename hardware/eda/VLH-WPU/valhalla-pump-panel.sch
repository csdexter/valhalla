<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.1">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
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
<description>&lt;b&gt;Submersible Pump Automation&lt;/b&gt;
&lt;p&gt;Operation "Valhalla"&lt;/p&gt;
&lt;p&gt;CLASSIFIED: SECRET, NEED-TO-KNOW-ONLY&lt;/p&gt;
&lt;p&gt;This is the a schematic of the submersible pump automation panel and outside components.&lt;/p&gt;</description>
<libraries>
<library name="e-motoren">
<description>&lt;b&gt;Motoren für Elektropläne&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MOTOR_1-PHASEN">
<description>Dummy</description>
<circle x="0" y="0" radius="5.08" width="0.1524" layer="21"/>
<pad name="V" x="0" y="3.175" drill="0.8" shape="square"/>
<pad name="U" x="-2.54" y="3.175" drill="0.8" shape="square"/>
<pad name="PE" x="2.54" y="3.175" drill="0.8" shape="square"/>
<text x="-2.54" y="-0.635" size="1.778" layer="21">M 1~</text>
</package>
</packages>
<symbols>
<symbol name="MOTOR_1-PHASEN">
<wire x1="6.477" y1="-1.27" x2="7.62" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-1.27" x2="7.62" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="4.572" width="0.1524" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="4.572" width="0.1524" layer="94"/>
<circle x="0" y="-1.27" radius="6.35" width="0.2032" layer="94"/>
<text x="-1.397" y="-1.27" size="2.54" layer="94">M</text>
<text x="-2.159" y="-5.08" size="2.54" layer="94">1~</text>
<text x="-3.81" y="-8.89" size="1.778" layer="95" rot="MR180">&gt;PART</text>
<text x="-3.81" y="-11.43" size="1.778" layer="96" rot="MR180">&gt;VALUE</text>
<text x="-3.81" y="-19.05" size="1.778" layer="96" rot="MR180">&gt;FUNKTION</text>
<text x="-3.81" y="-13.97" size="1.778" layer="96" rot="MR180">&gt;TYPE</text>
<text x="-3.81" y="-16.51" size="1.778" layer="96" rot="MR180">&gt;HERSTELLER</text>
<pin name="V" x="2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="U" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="PE" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOTOR_1-PHASEN" prefix="M" uservalue="yes">
<description>1-Phasen-Wechselstrom-Motor</description>
<gates>
<gate name="1" symbol="MOTOR_1-PHASEN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MOTOR_1-PHASEN">
<connects>
<connect gate="1" pin="PE" pad="PE"/>
<connect gate="1" pin="U" pad="U"/>
<connect gate="1" pin="V" pad="V"/>
</connects>
<technologies>
<technology name="">
<attribute name="FUNKTION" value="" constant="no"/>
<attribute name="HERSTELLER" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="e-motorschutzschalter">
<description>Motorschutzschalter für Elektropläne</description>
<packages>
<package name="MOTORSCHUTZSCHALTER_3-POL_THERM_MAG_HANDBETAETIGT_HILFSKONTAKTE">
<description>Dummy</description>
<pad name="1" x="-15.24" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="2" x="-15.24" y="-17.78" drill="0.5" diameter="1" shape="square"/>
<pad name="3" x="-10.16" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="4" x="-10.16" y="-17.78" drill="0.5" diameter="1" shape="square"/>
<pad name="5" x="-5.08" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="6" x="-5.08" y="-17.78" drill="0.5" diameter="1" shape="square"/>
<pad name="97" x="33.02" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="98" x="33.02" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="95" x="38.1" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="96" x="38.1" y="-7.62" drill="0.5" diameter="1" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="MOTORSCHUTZSCHALTER_3-POL_THERM_MAG_HANDBETAETIGT">
<wire x1="-5.08" y1="2.54" x2="-7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="-0.762" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-0.762" x2="-5.08" y2="-0.762" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-0.762" x2="-2.54" y2="-0.762" width="0.254" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="1.524" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="1.524" x2="-6.096" y2="1.524" width="0.1524" layer="94"/>
<wire x1="-6.096" y1="1.524" x2="-6.096" y2="0.254" width="0.1524" layer="94"/>
<wire x1="-6.096" y1="0.254" x2="-5.08" y2="0.254" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="0.254" x2="-5.08" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="-6.223" y1="-3.429" x2="-5.969" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-6.35" y1="-1.524" x2="-5.588" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-6.604" y1="-3.429" x2="-5.842" y2="-3.429" width="0.254" layer="94"/>
<wire x1="-4.572" y1="-1.524" x2="-3.302" y2="-2.413" width="0.254" layer="94"/>
<wire x1="-3.302" y1="-2.413" x2="-4.572" y2="-3.429" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-0.762" x2="-7.62" y2="-4.064" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-4.064" x2="-5.08" y2="-4.064" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-4.064" x2="-2.54" y2="-4.064" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-4.064" x2="-5.08" y2="-5.08" width="0.1524" layer="94" style="shortdash"/>
<wire x1="0" y1="2.54" x2="-2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-0.762" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.762" x2="0" y2="-0.762" width="0.254" layer="94"/>
<wire x1="0" y1="-0.762" x2="2.54" y2="-0.762" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.524" width="0.1524" layer="94"/>
<wire x1="0" y1="1.524" x2="-1.016" y2="1.524" width="0.1524" layer="94"/>
<wire x1="-1.016" y1="1.524" x2="-1.016" y2="0.254" width="0.1524" layer="94"/>
<wire x1="-1.016" y1="0.254" x2="0" y2="0.254" width="0.1524" layer="94"/>
<wire x1="0" y1="0.254" x2="0" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="-1.143" y1="-3.429" x2="-0.889" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-1.524" x2="-0.508" y2="-1.524" width="0.254" layer="94"/>
<wire x1="-1.524" y1="-3.429" x2="-0.762" y2="-3.429" width="0.254" layer="94"/>
<wire x1="0.508" y1="-1.524" x2="1.778" y2="-2.413" width="0.254" layer="94"/>
<wire x1="1.778" y1="-2.413" x2="0.508" y2="-3.429" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="-4.064" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-4.064" x2="0" y2="-4.064" width="0.254" layer="94"/>
<wire x1="0" y1="-4.064" x2="2.54" y2="-4.064" width="0.254" layer="94"/>
<wire x1="0" y1="-4.064" x2="0" y2="-5.08" width="0.1524" layer="94" style="shortdash"/>
<wire x1="7.62" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-0.762" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.762" x2="5.08" y2="-0.762" width="0.254" layer="94"/>
<wire x1="5.08" y1="-0.762" x2="7.62" y2="-0.762" width="0.254" layer="94"/>
<wire x1="7.62" y1="-0.762" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="1.524" width="0.1524" layer="94"/>
<wire x1="5.08" y1="1.524" x2="4.064" y2="1.524" width="0.1524" layer="94"/>
<wire x1="4.064" y1="1.524" x2="4.064" y2="0.254" width="0.1524" layer="94"/>
<wire x1="4.064" y1="0.254" x2="5.08" y2="0.254" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0.254" x2="5.08" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="3.937" y1="-3.429" x2="4.191" y2="-1.524" width="0.254" layer="94"/>
<wire x1="3.81" y1="-1.524" x2="4.572" y2="-1.524" width="0.254" layer="94"/>
<wire x1="3.556" y1="-3.429" x2="4.318" y2="-3.429" width="0.254" layer="94"/>
<wire x1="5.588" y1="-1.524" x2="6.858" y2="-2.413" width="0.254" layer="94"/>
<wire x1="6.858" y1="-2.413" x2="5.588" y2="-3.429" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="-4.064" width="0.254" layer="94"/>
<wire x1="2.54" y1="-4.064" x2="5.08" y2="-4.064" width="0.254" layer="94"/>
<wire x1="5.08" y1="-4.064" x2="7.62" y2="-4.064" width="0.254" layer="94"/>
<wire x1="7.62" y1="-4.064" x2="7.62" y2="-0.762" width="0.254" layer="94"/>
<wire x1="5.08" y1="-4.064" x2="5.08" y2="-5.08" width="0.1524" layer="94" style="shortdash"/>
<wire x1="-5.08" y1="9.398" x2="-5.08" y2="10.033" width="0.1524" layer="94" curve="-157.380135"/>
<wire x1="-5.08" y1="5.08" x2="-6.35" y2="9.144" width="0.254" layer="94"/>
<wire x1="-5.08" y1="10.16" x2="-5.08" y2="9.398" width="0.1524" layer="94"/>
<wire x1="0" y1="9.398" x2="0" y2="10.033" width="0.1524" layer="94" curve="-157.380135"/>
<wire x1="0" y1="5.08" x2="-1.27" y2="9.144" width="0.254" layer="94"/>
<wire x1="0" y1="10.16" x2="0" y2="9.398" width="0.1524" layer="94"/>
<wire x1="5.08" y1="9.398" x2="5.08" y2="10.033" width="0.1524" layer="94" curve="-157.380135"/>
<wire x1="5.08" y1="5.08" x2="3.81" y2="9.144" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="9.398" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="5.08" width="0.1778" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="2.54" width="0.1778" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="2.54" width="0.1778" layer="94"/>
<wire x1="-12.827" y1="7.62" x2="-13.462" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-10.541" y1="8.763" x2="-10.541" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-10.541" y1="7.62" x2="-10.541" y2="6.477" width="0.1524" layer="94"/>
<wire x1="-9.779" y1="7.62" x2="-10.16" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="-10.541" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-12.827" y1="8.763" x2="-10.541" y2="8.763" width="0.1524" layer="94"/>
<wire x1="-12.827" y1="6.477" x2="-10.541" y2="6.477" width="0.1524" layer="94"/>
<wire x1="-12.827" y1="7.62" x2="-12.827" y2="6.477" width="0.1524" layer="94"/>
<wire x1="-12.827" y1="8.763" x2="-12.827" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-11.684" y1="9.017" x2="-11.684" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-11.684" y1="7.62" x2="-11.684" y2="6.223" width="0.1524" layer="94"/>
<wire x1="-10.541" y1="7.62" x2="-11.684" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-11.684" y1="7.62" x2="-12.827" y2="7.62" width="0.1524" layer="94"/>
<wire x1="-11.684" y1="7.62" x2="-11.684" y2="1.27" width="0.1524" layer="94" style="shortdash"/>
<wire x1="-11.684" y1="1.27" x2="-11.684" y2="-1.27" width="0.1524" layer="94" style="shortdash"/>
<wire x1="-11.684" y1="-1.27" x2="-7.62" y2="-1.27" width="0.1524" layer="94" style="shortdash"/>
<wire x1="-11.684" y1="1.27" x2="-11.684" y2="1.016" width="0.1524" layer="94" style="shortdash"/>
<wire x1="-11.684" y1="1.016" x2="-7.62" y2="1.016" width="0.1524" layer="94" style="shortdash"/>
<wire x1="-10.16" y1="7.62" x2="3.556" y2="7.62" width="0.1524" layer="94" style="shortdash"/>
<text x="-13.97" y="10.16" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-13.97" y="7.62" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<text x="-13.97" y="0" size="1.778" layer="96" rot="R180">&gt;FUNKTION</text>
<text x="-13.97" y="5.08" size="1.778" layer="96" rot="R180">&gt;TYPE</text>
<text x="-13.97" y="2.54" size="1.778" layer="96" rot="R180">&gt;HERSTELLER</text>
<pin name="2" x="-5.08" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="1" x="-5.08" y="12.7" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="4" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="3" x="0" y="12.7" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="6" x="5.08" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="5" x="5.08" y="12.7" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
<symbol name="SCHLIESSER-1">
<wire x1="0" y1="1.524" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="1.524" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-2.54" y="0" size="1.27" layer="96" rot="R180">&gt;XREF</text>
<pin name="97" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="98" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="OEFFNER-1">
<wire x1="2.032" y1="1.778" x2="1.016" y2="1.778" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.778" x2="0" y2="1.778" width="0.1524" layer="94"/>
<wire x1="0" y1="1.778" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="1.3768" y2="2.1384" width="0.254" layer="94"/>
<wire x1="0.381" y1="1.778" x2="1.016" y2="1.778" width="0.1524" layer="94"/>
<text x="-2.54" y="1.27" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-2.54" y="-1.27" size="1.27" layer="96" rot="R180">&gt;XREF</text>
<pin name="96" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="95" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOTORSCHUTZSCHALTER_3-POL_THERM_MAG_HANDBETAETIGT_HILFSKONTAKTE" prefix="F" uservalue="yes">
<description>Motorschutzschalter 3-pol. mit thermischer Auslösung, Handbetätigt, Hilfskontakte</description>
<gates>
<gate name="G$1" symbol="MOTORSCHUTZSCHALTER_3-POL_THERM_MAG_HANDBETAETIGT" x="-10.16" y="7.62" addlevel="must"/>
<gate name="G$2" symbol="SCHLIESSER-1" x="33.02" y="5.08"/>
<gate name="G$3" symbol="OEFFNER-1" x="38.1" y="5.08"/>
</gates>
<devices>
<device name="" package="MOTORSCHUTZSCHALTER_3-POL_THERM_MAG_HANDBETAETIGT_HILFSKONTAKTE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$2" pin="97" pad="97"/>
<connect gate="G$2" pin="98" pad="98"/>
<connect gate="G$3" pin="95" pad="95"/>
<connect gate="G$3" pin="96" pad="96"/>
</connects>
<technologies>
<technology name="">
<attribute name="FUNKTION" value="" constant="no"/>
<attribute name="HERSTELLER" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="e-sicherungen">
<description>&lt;b&gt;Sicherungen und Begrenzer für Elektropläne&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="LEITUNGSSCHUTZSCHALTER_2-POL">
<description>Dummy</description>
<pad name="1" x="-5.08" y="-2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="2" x="-5.08" y="-12.7" drill="0.5" diameter="1" shape="square"/>
<pad name="N" x="0" y="-2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="N'" x="0" y="-12.7" drill="0.5" diameter="1" shape="square"/>
</package>
<package name="FEHLER-STROM-SCHUTZSCHALTER_2-POL">
<description>Fehlerstromschutzschalter 2-pol</description>
<pad name="1" x="0" y="5.08" drill="0.2" diameter="0.6"/>
<pad name="2" x="0" y="-12.7" drill="0.2" diameter="0.6"/>
<pad name="N" x="5.08" y="5.08" drill="0.2" diameter="0.6"/>
<pad name="N'" x="5.08" y="-12.7" drill="0.2" diameter="0.6"/>
</package>
</packages>
<symbols>
<symbol name="LEITUNGSSCHUTZSCHALTER_2-POL">
<wire x1="-5.08" y1="1.9716" x2="-5.08" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="1.9716" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-0.9988" y2="1.9716" width="0.254" layer="94"/>
<wire x1="-6.9126" y1="1.1181" x2="-7.722" y2="0.7968" width="0.1524" layer="94"/>
<wire x1="-6.5954" y1="0.3184" x2="-6.9126" y2="1.1181" width="0.1524" layer="94"/>
<wire x1="-7.4135" y1="-0.003" x2="-7.722" y2="0.7968" width="0.1524" layer="94"/>
<wire x1="-5.786" y1="0.6399" x2="-6.5954" y2="0.3184" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-6.0789" y2="1.9716" width="0.254" layer="94"/>
<wire x1="-6.2481" y1="-1.1538" x2="-5.459" y2="-0.8412" width="0.1524" layer="94"/>
<wire x1="-7.4135" y1="-0.003" x2="-8.1195" y2="-0.2786" width="0.1524" layer="94"/>
<wire x1="-5.334" y1="0" x2="-4.699" y2="0" width="0.1524" layer="94"/>
<wire x1="-4.191" y1="0" x2="-3.556" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.921" y1="0" x2="-2.286" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.651" y1="0" x2="-1.016" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.016" y1="2.032" x2="-0.635" y2="2.032" width="0.1524" layer="94"/>
<text x="-8.89" y="2.54" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-8.89" y="0" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<text x="-8.89" y="-7.62" size="1.778" layer="96" rot="R180">&gt;FUNKTION</text>
<text x="-8.89" y="-2.54" size="1.778" layer="96" rot="R180">&gt;TYPE</text>
<text x="-8.89" y="-5.08" size="1.778" layer="96" rot="R180">&gt;HERSTELLER</text>
<pin name="1" x="-5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="2" x="-5.08" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="N" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="N@1" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<polygon width="0.1524" layer="94">
<vertex x="-7.0866" y="-1.4732"/>
<vertex x="-6.2484" y="-0.889"/>
<vertex x="-6.0706" y="-1.3462"/>
</polygon>
</symbol>
<symbol name="FEHLER-STROM-SCHUTZSCHALTER_2-POL">
<wire x1="-5.3162" y1="0.0138" x2="-3.7912" y2="0.0138" width="0.1524" layer="94"/>
<wire x1="12.2002" y1="0.0138" x2="9.0108" y2="0.0138" width="0.1524" layer="94"/>
<wire x1="9.3932" y1="1.2902" x2="9.3932" y2="-1.2626" width="0.1524" layer="94"/>
<wire x1="11.9462" y1="1.2902" x2="9.3932" y2="1.2902" width="0.1524" layer="94"/>
<wire x1="11.9462" y1="-1.2626" x2="9.3932" y2="-1.2626" width="0.1524" layer="94"/>
<wire x1="11.9462" y1="1.2902" x2="11.9462" y2="-1.2626" width="0.1524" layer="94"/>
<wire x1="10.6696" y1="1.6682" x2="10.6696" y2="-1.6338" width="0.1524" layer="94"/>
<wire x1="10.6696" y1="-1.6338" x2="10.6696" y2="-1.6404" width="0.1524" layer="94"/>
<wire x1="13.7242" y1="0.0138" x2="13.2148" y2="0.0138" width="0.1524" layer="94"/>
<wire x1="13.716" y1="2.54" x2="16.891" y2="2.54" width="0.1524" layer="94"/>
<wire x1="16.891" y1="2.54" x2="16.891" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="16.891" y1="-2.54" x2="13.716" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="13.716" y1="2.54" x2="13.716" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.0795" y2="0.762" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.778" width="0.1524" layer="94"/>
<wire x1="-0.508" y1="1.778" x2="0" y2="1.778" width="0.1524" layer="94"/>
<wire x1="0.508" y1="1.778" x2="0" y2="1.778" width="0.1524" layer="94"/>
<wire x1="-2.7572" y1="0.0138" x2="-1.232" y2="0.0138" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="6.35" y1="-5.0165" x2="6.35" y2="-8.763" width="0.1524" layer="94"/>
<wire x1="8.255" y1="-4.953" x2="9.906" y2="-4.953" width="0.1524" layer="94"/>
<wire x1="11.557" y1="-4.953" x2="12.7" y2="-4.953" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-4.953" x2="12.7" y2="-8.8265" width="0.1524" layer="94"/>
<wire x1="12.7" y1="-8.8265" x2="8.382" y2="-8.8265" width="0.1524" layer="94"/>
<wire x1="9.906" y1="-3.556" x2="9.906" y2="-5.3975" width="0.1524" layer="94"/>
<wire x1="9.906" y1="-5.3975" x2="9.906" y2="-6.35" width="0.1524" layer="94"/>
<wire x1="9.906" y1="-6.35" x2="11.557" y2="-6.35" width="0.1524" layer="94"/>
<wire x1="11.557" y1="-6.35" x2="11.557" y2="-4.953" width="0.1524" layer="94"/>
<wire x1="11.557" y1="-4.953" x2="11.557" y2="-4.5085" width="0.1524" layer="94"/>
<wire x1="11.557" y1="-4.5085" x2="11.557" y2="-3.556" width="0.1524" layer="94"/>
<wire x1="11.557" y1="-3.556" x2="9.906" y2="-3.556" width="0.1524" layer="94"/>
<wire x1="10.6696" y1="-1.6338" x2="10.6696" y2="-3.4819" width="0.1524" layer="94"/>
<wire x1="9.906" y1="-5.3975" x2="11.557" y2="-4.5085" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-3.81" x2="-2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="94"/>
<wire x1="2.3102" y1="0.0138" x2="3.8352" y2="0.0138" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="4.0005" y2="0.762" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="1.778" width="0.1524" layer="94"/>
<wire x1="4.572" y1="1.778" x2="5.08" y2="1.778" width="0.1524" layer="94"/>
<wire x1="5.588" y1="1.778" x2="5.08" y2="1.778" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="-3.81" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-3.81" x2="5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="4.3815" y1="0.889" x2="4.0005" y2="0.762" width="0.254" layer="94"/>
<wire x1="5.08" y1="-3.81" x2="-2.54" y2="-3.81" width="0.1524" layer="94"/>
<wire x1="-0.2362" y1="0.0138" x2="1.2888" y2="0.0138" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-6.1595" y2="0.762" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="4.8438" y1="0.0138" x2="6.3688" y2="0.0138" width="0.1524" layer="94"/>
<wire x1="7.0727" y1="0.0138" x2="8.5977" y2="0.0138" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="-5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-5.715" y1="-0.9525" x2="-7.62" y2="-0.9525" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-0.3175" x2="-7.62" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="1.0795" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="0.381" width="0.1524" layer="94"/>
<circle x="5.08" y="1.27" radius="0.381" width="0.1524" layer="94"/>
<circle x="5.08" y="-10.16" radius="0.3175" width="0" layer="94"/>
<circle x="5.08" y="-3.81" radius="0.3175" width="0" layer="94"/>
<text x="-7.62" y="3.81" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-7.62" y="-3.81" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<text x="-7.62" y="-11.43" size="1.778" layer="96" rot="R180">&gt;FUNKTION</text>
<text x="-7.62" y="-6.35" size="1.778" layer="96" rot="R180">&gt;TYPE</text>
<text x="-7.62" y="-8.89" size="1.778" layer="96" rot="R180">&gt;HERSTELLER</text>
<text x="16.256" y="-0.889" size="1.778" layer="94" rot="MR0">H</text>
<text x="-10.2235" y="-2.159" size="2.1844" layer="94">T</text>
<rectangle x1="6.858" y1="-8.89" x2="8.382" y2="-4.8768" layer="94" rot="R180"/>
<rectangle x1="-0.762" y1="-8.89" x2="0.762" y2="-4.8768" layer="94"/>
<rectangle x1="4.318" y1="-8.89" x2="5.842" y2="-4.8768" layer="94"/>
<pin name="2" x="0" y="-12.7" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="1" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="N'" x="5.08" y="-12.7" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="N" x="5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="10.668" y="-2.159"/>
<vertex x="11.1125" y="-2.6035"/>
<vertex x="10.2235" y="-2.6035"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LEITUNGSSCHUTZSCHALTER_2-POL" prefix="F" uservalue="yes">
<description>Leitungsschutzschalter, 2-pol.</description>
<gates>
<gate name="G$1" symbol="LEITUNGSSCHUTZSCHALTER_2-POL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LEITUNGSSCHUTZSCHALTER_2-POL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="N" pad="N"/>
<connect gate="G$1" pin="N@1" pad="N'"/>
</connects>
<technologies>
<technology name="">
<attribute name="FUNKTION" value="" constant="no"/>
<attribute name="HERSTELLER" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="FEHLER-STROM-SCHUTZSCHALTER_2-POL" prefix="F">
<description>Fehlerstromschutzschalter (FI) 2-pol mit Prüftaste</description>
<gates>
<gate name="G$1" symbol="FEHLER-STROM-SCHUTZSCHALTER_2-POL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FEHLER-STROM-SCHUTZSCHALTER_2-POL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="N" pad="N"/>
<connect gate="G$1" pin="N'" pad="N'"/>
</connects>
<technologies>
<technology name="">
<attribute name="FUNKTION" value="" constant="no"/>
<attribute name="HERSTELLER" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="e-spulen-transformatoren">
<description>&lt;b&gt;Spulen und Transformatoren für Elektropläne&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="TRANSFORMATOR">
<description>Dummy</description>
<pad name="1" x="-3.175" y="1.905" drill="0.2" diameter="0.6" shape="square"/>
<pad name="2" x="-3.175" y="-1.905" drill="0.2" diameter="0.6" shape="square"/>
<pad name="3" x="2.54" y="1.905" drill="0.2" diameter="0.6" shape="square"/>
<pad name="4" x="2.54" y="-1.905" drill="0.2" diameter="0.6" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="TRANSFORMATOR">
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="2.54" width="0.1524" layer="94" curve="-180"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="0" width="0.1524" layer="94" curve="-180"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-2.54" width="0.1524" layer="94" curve="-180"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-5.08" width="0.1524" layer="94" curve="-180"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="2.54" width="0.1524" layer="94" curve="180"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="0" width="0.1524" layer="94" curve="180"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-2.54" width="0.1524" layer="94" curve="180"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-5.08" width="0.1524" layer="94" curve="180"/>
<text x="-7.62" y="2.54" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-7.62" y="0" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<text x="-5.08" y="-13.97" size="1.778" layer="96">&gt;FUNKTION</text>
<text x="-5.08" y="-8.89" size="1.778" layer="96">&gt;TYPE</text>
<text x="-5.08" y="-11.43" size="1.778" layer="96">&gt;HERSTELLER</text>
<pin name="1" x="-5.08" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="2" x="-5.08" y="-5.08" visible="pad" length="short" direction="pas"/>
<pin name="3" x="5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="4" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TRANSFORMATOR" prefix="T" uservalue="yes">
<description>Transformator</description>
<gates>
<gate name="1" symbol="TRANSFORMATOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TRANSFORMATOR">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="FUNKTION" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="automotive">
<description>This library is mainly documentation-oriented, i.e. contains only symbols. It is meant for drawing automotive schematics.</description>
<packages>
</packages>
<symbols>
<symbol name="SWITCH_SPDT">
<description>Generic SPDT switch, as used on the signa indicator control.</description>
<circle x="0" y="5.08" radius="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="-2.54" width="0.254" layer="94"/>
<circle x="2.54" y="-5.08" radius="0.635" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="-1.905" width="0.254" layer="94"/>
<text x="-5.08" y="-2.54" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<circle x="-2.54" y="-5.08" radius="0.635" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="-1.905" width="0.254" layer="94"/>
<pin name="P$1" x="-2.54" y="-10.16" visible="off" length="middle" direction="sup" rot="R90"/>
<pin name="P$2" x="2.54" y="-10.16" visible="off" length="middle" direction="sup" rot="R90"/>
<pin name="P$3" x="0" y="10.16" visible="off" length="middle" direction="sup" rot="R270"/>
</symbol>
<symbol name="SWITCH_NC">
<description>Generic normally closed switch</description>
<pin name="P$1" x="0" y="10.16" visible="off" length="middle" direction="sup" rot="R270"/>
<pin name="P$2" x="0" y="-10.16" visible="off" length="middle" direction="sup" rot="R90"/>
<circle x="0" y="5.08" radius="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="1.905" y2="-2.54" width="0.254" layer="94"/>
<circle x="0" y="-5.08" radius="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="0" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="7.62" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
</symbol>
<symbol name="SWITCH_NO">
<description>Generic normally open switch</description>
<pin name="P$1" x="0" y="10.16" visible="off" length="middle" direction="sup" rot="R270"/>
<pin name="P$2" x="0" y="-10.16" visible="off" length="middle" direction="sup" rot="R90"/>
<circle x="0" y="5.08" radius="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="1.905" y2="-2.54" width="0.254" layer="94"/>
<circle x="0" y="-5.08" radius="0.635" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="0" y2="-2.54" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="7.62" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SWITCH_SPDT" prefix="K" uservalue="yes">
<description>Generic SPDT switch</description>
<gates>
<gate name="G$1" symbol="SWITCH_SPDT" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SWITCH_NC" prefix="K" uservalue="yes">
<description>Generic NC switch.</description>
<gates>
<gate name="G$1" symbol="SWITCH_NC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SWITCH_NO" prefix="K" uservalue="yes">
<description>Generic SPST switch</description>
<gates>
<gate name="G$1" symbol="SWITCH_NO" x="0" y="0"/>
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
<library name="e-schuetze-relais">
<description>&lt;b&gt;Schütze und Relais für Elektropläne&lt;/b&gt;&lt;p&gt;

Wenn das von Ihnen gewünschte Schütz in der vorliegenden Bibliothek nicht vorhanden ist, laden Sie
die Bibliothek &lt;u&gt;e-symbole.lbr&lt;/u&gt;, und starten Sie das User-Languag-Programm  &lt;u&gt;e-bauteil-erstellen.ulp&lt;/u&gt;.&lt;p&gt; 

&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="HAUPTSCHUETZ_3-POL">
<description>Dummy</description>
<pad name="A1" x="-10.16" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="A2" x="-10.16" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="1" x="7.62" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="2" x="7.62" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="3" x="12.7" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="4" x="12.7" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="5" x="17.78" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="6" x="17.78" y="-7.62" drill="0.5" diameter="1" shape="square"/>
</package>
<package name="RELAIS_2-POL-UM">
<description>Dummy</description>
<pad name="11" x="5.08" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="12" x="2.54" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="14" x="7.62" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="21" x="12.7" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="22" x="10.16" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="24" x="15.24" y="-7.62" drill="0.5" diameter="1" shape="square"/>
<pad name="A1" x="-10.16" y="2.54" drill="0.5" diameter="1" shape="square"/>
<pad name="A2" x="-10.16" y="-7.62" drill="0.5" diameter="1" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="SPULE">
<wire x1="3.175" y1="1.651" x2="0" y2="1.651" width="0.254" layer="94"/>
<wire x1="0" y1="1.651" x2="-3.175" y2="1.651" width="0.254" layer="94"/>
<wire x1="-3.175" y1="1.651" x2="-3.175" y2="-1.651" width="0.254" layer="94"/>
<wire x1="-3.175" y1="-1.651" x2="0" y2="-1.651" width="0.254" layer="94"/>
<wire x1="0" y1="-1.651" x2="3.175" y2="-1.651" width="0.254" layer="94"/>
<wire x1="3.175" y1="-1.651" x2="3.175" y2="1.651" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.651" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.651" width="0.1524" layer="94"/>
<text x="-3.81" y="2.54" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-3.81" y="0" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<text x="-3.81" y="-7.62" size="1.778" layer="96" rot="R180">&gt;FUNKTION</text>
<text x="-3.81" y="-2.54" size="1.778" layer="96" rot="R180">&gt;TYPE</text>
<text x="-3.81" y="-5.08" size="1.778" layer="96" rot="R180">&gt;HERSTELLER</text>
<pin name="A2" x="0" y="-5.08" visible="pad" length="short" direction="in" rot="R90"/>
<pin name="A1" x="0" y="5.08" visible="pad" length="short" direction="in" rot="R270"/>
</symbol>
<symbol name="SCHLIESSER_HAUPTSCHUETZ_3-POL">
<wire x1="-5.08" y1="0" x2="-3.81" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.143" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="1.397" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="3.81" y2="0" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="1.778" x2="-5.08" y2="2.413" width="0.1524" layer="94" curve="-157.380135"/>
<wire x1="-5.08" y1="-2.54" x2="-6.35" y2="1.524" width="0.254" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="1.778" width="0.1524" layer="94"/>
<wire x1="0" y1="1.778" x2="0" y2="2.413" width="0.1524" layer="94" curve="-157.380135"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="1.524" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.778" width="0.1524" layer="94"/>
<wire x1="5.08" y1="1.778" x2="5.08" y2="2.413" width="0.1524" layer="94" curve="-157.380135"/>
<wire x1="5.08" y1="-2.54" x2="3.81" y2="1.524" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="1.778" width="0.1524" layer="94"/>
<text x="-7.62" y="1.27" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-6.35" y="-1.27" size="1.27" layer="95" rot="R180">&gt;XREF</text>
<text x="-8.89" y="-3.81" size="1.778" layer="95" rot="R180">&gt;VALUE2</text>
<pin name="2" x="-5.08" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="1" x="-5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="3" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="4" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="5" x="5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="6" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="WECHSLER">
<wire x1="-2.54" y1="-1.524" x2="-1.27" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="-1.27" y2="-1.651" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-1.524" width="0.1524" layer="94"/>
<text x="-3.81" y="2.54" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-3.81" y="0" size="1.27" layer="95" rot="R180">&gt;XREF</text>
<pin name="1" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="4" x="2.54" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="2" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="HAUPTSCHUETZ_3-POL" prefix="Q" uservalue="yes">
<description>Hauptschütz mit 3 Schließern</description>
<gates>
<gate name="G$1" symbol="SPULE" x="-10.16" y="5.08" addlevel="must"/>
<gate name="G$2" symbol="SCHLIESSER_HAUPTSCHUETZ_3-POL" x="7.62" y="5.08" addlevel="always"/>
</gates>
<devices>
<device name="" package="HAUPTSCHUETZ_3-POL">
<connects>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$2" pin="1" pad="1"/>
<connect gate="G$2" pin="2" pad="2"/>
<connect gate="G$2" pin="3" pad="3"/>
<connect gate="G$2" pin="4" pad="4"/>
<connect gate="G$2" pin="5" pad="5"/>
<connect gate="G$2" pin="6" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="FUNKTION" value="" constant="no"/>
<attribute name="HERSTELLER" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
<attribute name="VALUE2" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RELAIS_2-POL-UM" prefix="K">
<description>Relais mit 2 Wechsleschalter</description>
<gates>
<gate name="G$1" symbol="SPULE" x="-10.16" y="5.08" addlevel="must"/>
<gate name="1" symbol="WECHSLER" x="5.08" y="5.08"/>
<gate name="2" symbol="WECHSLER" x="12.7" y="5.08"/>
</gates>
<devices>
<device name="" package="RELAIS_2-POL-UM">
<connects>
<connect gate="1" pin="1" pad="11"/>
<connect gate="1" pin="2" pad="12"/>
<connect gate="1" pin="4" pad="14"/>
<connect gate="2" pin="1" pad="21"/>
<connect gate="2" pin="2" pad="22"/>
<connect gate="2" pin="4" pad="24"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="e-klemmen">
<description>&lt;b&gt;Klemmen für Elektropläne&lt;/b&gt;&lt;p&gt;

Diese Bibliothek enthält Klemmen sowie Devices für Einspeisung und Erdung. Folgendes ist zu
beachten: &lt;p&gt;

&lt;b&gt;Einspeisungs-Devices&lt;/b&gt;&lt;p&gt;

Enthalten kein Package, da kein entsprechendes Bauteil existiert, das in einer Materialliste erscheinen sollte. &lt;p&gt;

&lt;b&gt;Erdungs-Devices&lt;/b&gt;&lt;p&gt;

Enthalten ein Package, da in einer Materialliste zumindest ein Bauteil mit Klemmmöglichkeit
erscheinen muss.&lt;p&gt;

&lt;b&gt;Klemmen&lt;/b&gt;&lt;p&gt;

Klemmennamen müssen im Schaltplan mit &lt;i&gt;X&lt;/i&gt; beginnen, damit Klemmenplan und Brückenplan richtig erzeugt werden. Deshalb ist ihr Prefix im Device auf X gesetzt. Bitte auch im Schaltplan keine
anderen Namen verwenden. Siehe auch: User-Language-Programm e-klemmenplan.ulp.&lt;p&gt;

&lt;b&gt;Brückenklemmen&lt;/b&gt;&lt;p&gt;

Brückenklemmen sind Klemmen, die zusätzlich zu den Drahtanschlüssen die Möglichkeit bieten, mit einem Brückenkamm eine Reihe von Klemmen zu verbinden. Mit dem User-Language-Programm
e-brueckenverwaltung.ulp werden solche Brücken definiert und als Liste ausgegeben. In dessen
Hilfe erfahren Sie Details. Dieses Programm setzt einige Dinge bei den verwendeten Bauteilen
voraus (nur wichtig, wenn Sie eigene Brückenklemmen definieren wollen):&lt;p&gt;

Der Device-Name muss &lt;i&gt;BRUECKE&lt;/i&gt; enthalten, andere Klemmen dürfen  &lt;i&gt;BRUECKE&lt;/i&gt;
nicht als Namensbestandteil enthalten.&lt;p&gt;

Die Pin-Namen der Klemmensymbole müssen 1 und 2 sein. Die damit verbundenen Pad-Namen
des Package müssen 1.1, 1.2; 2.1, 2.2 usw. sein. Dabei entspricht die Zahl vor dem Punkt dem
Gate-Namen (1, 2, 3..).&lt;p&gt;

Jedes Klemmensymbol muss gesondert definiert sein, da es für den Referenz-Text zwei Attribute verwendet, deren Platzhalter je Symbol unterschiedlich sind. Der Name der Attribute ist 51 und 52,
wenn es sich um Klemme 5 handelt. Der Parameter &lt;i&gt;display&lt;/i&gt; für diese Attribute (der im
Attribut-Bearbeitungsmenü im Feld &lt;i&gt;Anzeige&lt;/i&gt; eingestellt wird) muss im Schaltplan auf
&lt;i&gt;Off&lt;/i&gt; stehen, sonst werden die Referenz-Texte nicht an der richtigen Stelle dargestellt.
Wenn Sie das ULP zur Brückenverwaltung verwenden, geschieht das automatisch.&lt;p&gt;

&lt;p&gt;&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="EINSPEISUNG_3-N-PE">
<wire x1="-15.24" y1="5.08" x2="15.24" y2="5.08" width="0.254" layer="94"/>
<wire x1="15.24" y1="5.08" x2="15.24" y2="-5.08" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="-15.24" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-5.08" x2="-15.24" y2="5.08" width="0.254" layer="94"/>
<text x="-13.97" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-15.24" y="-7.62" size="1.778" layer="94">EINSPEISUNG</text>
<text x="9.271" y="2.921" size="1.778" layer="94" rot="R270">PE</text>
<text x="4.191" y="2.921" size="1.778" layer="94" rot="R270">N</text>
<text x="-0.889" y="2.921" size="1.778" layer="94" rot="R270">L3</text>
<text x="-5.969" y="2.921" size="1.778" layer="94" rot="R270">L2</text>
<text x="-11.049" y="2.921" size="1.778" layer="94" rot="R270">L1</text>
<pin name="L1-EXT" x="-10.16" y="7.62" visible="off" length="short" direction="sup" rot="R270"/>
<pin name="L2-EXT" x="-5.08" y="7.62" visible="off" length="short" direction="sup" rot="R270"/>
<pin name="L3-EXT" x="0" y="7.62" visible="off" length="short" direction="sup" rot="R270"/>
<pin name="N-EXT" x="5.08" y="7.62" visible="off" length="short" direction="sup" rot="R270"/>
<pin name="PE-EXT" x="10.16" y="7.62" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="EINSPEISUNG_3-N-PE" prefix="ESP" uservalue="yes">
<description>Einspeisung für 3 Phasen mit N und PE</description>
<gates>
<gate name="G$1" symbol="EINSPEISUNG_3-N-PE" x="0" y="0"/>
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
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC" urn="urn:adsk.eagle:symbol:13874/1" library_version="1">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" urn="urn:adsk.eagle:component:13926/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
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
<library name="e-lampen-signalisation">
<description>&lt;b&gt;Signalgeber für Elektropläne&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="LAMPE">
<description>Dummy</description>
<pad name="1" x="0" y="5.08" drill="0.2" diameter="0.6" shape="square"/>
<pad name="2" x="0" y="-5.08" drill="0.2" diameter="0.6" shape="square"/>
<text x="0" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="0" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="LAMPE">
<wire x1="0" y1="2.54" x2="0" y2="2.034" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-2.034" width="0.1524" layer="94"/>
<wire x1="-1.4352" y1="-1.4352" x2="1.4352" y2="1.4352" width="0.1524" layer="94"/>
<wire x1="1.4352" y1="-1.4352" x2="-1.4352" y2="1.4352" width="0.1524" layer="94"/>
<circle x="0" y="0" radius="2.034" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-2.54" y="0" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<text x="-2.54" y="-7.62" size="1.778" layer="96" rot="R180">&gt;FUNKTION</text>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R180">&gt;TYPE</text>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R180">&gt;HERSTELLER</text>
<pin name="X1" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="X2" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SIGNALLAMPE" prefix="P" uservalue="yes">
<description>Lampe</description>
<gates>
<gate name="G$1" symbol="LAMPE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LAMPE">
<connects>
<connect gate="G$1" pin="X1" pad="1"/>
<connect gate="G$1" pin="X2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="FUNKTION" value="" constant="no"/>
<attribute name="HERSTELLER" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="e-steckverbinder">
<description>&lt;b&gt;Steckverbinder für Elektropläne&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="STECKDOSE">
<description>Dummy</description>
<circle x="0" y="0" radius="3.8625" width="0.254" layer="21"/>
<circle x="-2.54" y="0" radius="0.635" width="0.254" layer="21"/>
<circle x="2.54" y="0" radius="0.635" width="0.254" layer="21"/>
<pad name="L1" x="-2.54" y="0" drill="0.8" shape="square"/>
<pad name="PE" x="0" y="-1.27" drill="0.8" shape="square"/>
<pad name="N" x="2.54" y="0" drill="0.8" shape="square"/>
<rectangle x1="-0.335" y1="-3.15" x2="0.3" y2="3.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="STECKDOSE">
<wire x1="5.08" y1="0" x2="5.08" y2="-5.207" width="0.1524" layer="94" style="dashdot"/>
<wire x1="5.08" y1="-5.207" x2="-5.08" y2="-5.207" width="0.1524" layer="94" style="dashdot"/>
<wire x1="-5.08" y1="-5.207" x2="-5.08" y2="0" width="0.1524" layer="94" style="dashdot"/>
<wire x1="-5.08" y1="0" x2="5.08" y2="0" width="0.1524" layer="94" style="dashdot"/>
<wire x1="-1.27" y1="-3.937" x2="-2.54" y2="-2.667" width="0.254" layer="94" curve="90"/>
<wire x1="-2.54" y1="-2.667" x2="-3.81" y2="-3.937" width="0.254" layer="94" curve="90"/>
<wire x1="0" y1="-1.778" x2="0" y2="-2.413" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.127" x2="-2.54" y2="-2.667" width="0.1524" layer="94" style="dashdot"/>
<wire x1="2.54" y1="-0.127" x2="2.54" y2="-2.667" width="0.1524" layer="94" style="dashdot"/>
<wire x1="3.81" y1="-3.937" x2="2.54" y2="-2.667" width="0.254" layer="94" curve="90"/>
<wire x1="2.54" y1="-2.667" x2="1.27" y2="-3.937" width="0.254" layer="94" curve="90"/>
<wire x1="0" y1="-0.254" x2="0" y2="-0.889" width="0.1524" layer="94" style="dashdot"/>
<wire x1="-0.508" y1="-0.889" x2="0.508" y2="-0.889" width="0.1524" layer="94" style="dashdot"/>
<wire x1="-0.381" y1="-1.143" x2="0.381" y2="-1.143" width="0.1524" layer="94" style="dashdot"/>
<wire x1="-0.254" y1="-1.397" x2="0.254" y2="-1.397" width="0.1524" layer="94" style="dashdot"/>
<circle x="0" y="-0.889" radius="0.889" width="0.1524" layer="94"/>
<text x="2.54" y="-6.35" size="1.778" layer="95" rot="R180">&gt;PART</text>
<rectangle x1="-0.381" y1="-3.937" x2="0.381" y2="-2.286" layer="94"/>
<pin name="L1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="N" x="2.54" y="2.54" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="PE" x="0" y="2.54" visible="pad" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="STECKDOSE" prefix="X" uservalue="yes">
<description>Steckdose mit Schutzleiter</description>
<gates>
<gate name="G$1" symbol="STECKDOSE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="STECKDOSE">
<connects>
<connect gate="G$1" pin="L1" pad="L1"/>
<connect gate="G$1" pin="N" pad="N"/>
<connect gate="G$1" pin="PE" pad="PE"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="e-schalter">
<description>&lt;b&gt;Schalter für Elektropläne&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Autor librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="LASTTRENNSCHALTER_4-POL">
<description>Dummy</description>
<pad name="2" x="0" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="1" x="0" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="3" x="5.08" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="4" x="5.08" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="5" x="10.16" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="6" x="10.16" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="N" x="15.24" y="7.62" drill="0.2" diameter="0.6" shape="square"/>
<pad name="N'" x="15.24" y="-7.62" drill="0.2" diameter="0.6" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="LASTTRENNSCHALTER_4-POL">
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="1.778" width="0.1524" layer="94"/>
<wire x1="-5.588" y1="1.778" x2="-5.08" y2="1.778" width="0.1524" layer="94"/>
<wire x1="-4.572" y1="1.778" x2="-5.08" y2="1.778" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.778" width="0.1524" layer="94"/>
<wire x1="-0.508" y1="1.778" x2="0" y2="1.778" width="0.1524" layer="94"/>
<wire x1="0.508" y1="1.778" x2="0" y2="1.778" width="0.1524" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="1.778" width="0.1524" layer="94"/>
<wire x1="4.572" y1="1.778" x2="5.08" y2="1.778" width="0.1524" layer="94"/>
<wire x1="5.588" y1="1.778" x2="5.08" y2="1.778" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-6.35" y2="1.651" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="1.651" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="3.81" y2="1.651" width="0.254" layer="94"/>
<wire x1="-3.937" y1="0" x2="-5.207" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="0" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="1.143" y1="0" x2="-0.127" y2="0" width="0.1524" layer="94"/>
<wire x1="4.191" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-7.8498" y1="0.0138" x2="-6.3248" y2="0.0138" width="0.1524" layer="94"/>
<wire x1="-10.9108" y1="0.0001" x2="-10.098" y2="-1.0159" width="0.1524" layer="94"/>
<wire x1="-10.098" y1="-1.0159" x2="-9.285" y2="0.0001" width="0.1524" layer="94"/>
<wire x1="-9.285" y1="0.0001" x2="-8.4724" y2="0.0001" width="0.1524" layer="94"/>
<wire x1="-12.5364" y1="0.0001" x2="-10.9108" y2="0.0001" width="0.1524" layer="94"/>
<wire x1="-12.5364" y1="1.2193" x2="-12.5364" y2="-1.2191" width="0.1524" layer="94"/>
<wire x1="-12.5364" y1="1.2193" x2="-11.3172" y2="1.2193" width="0.1524" layer="94"/>
<wire x1="-12.5364" y1="-1.2191" x2="-11.3172" y2="-1.2191" width="0.1524" layer="94"/>
<wire x1="10.16" y1="2.54" x2="10.16" y2="1.778" width="0.1524" layer="94"/>
<wire x1="9.652" y1="1.778" x2="10.16" y2="1.778" width="0.1524" layer="94"/>
<wire x1="10.668" y1="1.778" x2="10.16" y2="1.778" width="0.1524" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="8.89" y2="1.651" width="0.254" layer="94"/>
<wire x1="6.223" y1="0" x2="4.953" y2="0" width="0.1524" layer="94"/>
<wire x1="9.271" y1="0" x2="7.62" y2="0" width="0.1524" layer="94"/>
<circle x="-5.08" y="1.27" radius="0.381" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="0.381" width="0.1524" layer="94"/>
<circle x="5.08" y="1.27" radius="0.381" width="0.1524" layer="94"/>
<circle x="10.16" y="1.27" radius="0.381" width="0.1524" layer="94"/>
<text x="-10.16" y="3.81" size="1.778" layer="95" rot="R180">&gt;PART</text>
<text x="-10.16" y="-2.54" size="1.778" layer="96" rot="R180">&gt;VALUE</text>
<text x="-10.16" y="-10.16" size="1.778" layer="96" rot="R180">&gt;FUNKTION</text>
<text x="-10.16" y="-5.08" size="1.778" layer="96" rot="R180">&gt;TYPE</text>
<text x="-10.16" y="-7.62" size="1.778" layer="96" rot="R180">&gt;HERSTELLER</text>
<pin name="1" x="-5.08" y="5.08" visible="pad" length="short" direction="in" rot="R270"/>
<pin name="2" x="-5.08" y="-5.08" visible="pad" length="short" direction="in" rot="R90"/>
<pin name="3" x="0" y="5.08" visible="pad" length="short" direction="in" rot="R270"/>
<pin name="4" x="0" y="-5.08" visible="pad" length="short" direction="in" rot="R90"/>
<pin name="5" x="5.08" y="5.08" visible="pad" length="short" direction="in" rot="R270"/>
<pin name="6" x="5.08" y="-5.08" visible="pad" length="short" direction="in" rot="R90"/>
<pin name="7" x="10.16" y="5.08" visible="pad" length="short" direction="in" rot="R270"/>
<pin name="8" x="10.16" y="-5.08" visible="pad" length="short" direction="in" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LASTTRENNSCHALTER_4-POL" prefix="Q">
<description>Lasttrennschalter, 4-pol. mit Neutralleiter</description>
<gates>
<gate name="G$1" symbol="LASTTRENNSCHALTER_4-POL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LASTTRENNSCHALTER_4-POL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="N"/>
<connect gate="G$1" pin="8" pad="N'"/>
</connects>
<technologies>
<technology name="">
<attribute name="FUNKTION" value="" constant="no"/>
<attribute name="HERSTELLER" value="" constant="no"/>
<attribute name="TYPE" value="" constant="no"/>
</technology>
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
<part name="F1" library="e-motorschutzschalter" deviceset="MOTORSCHUTZSCHALTER_3-POL_THERM_MAG_HANDBETAETIGT_HILFSKONTAKTE" device="" value="4-6.3A"/>
<part name="F3" library="e-sicherungen" deviceset="LEITUNGSSCHUTZSCHALTER_2-POL" device="" value="6A"/>
<part name="T1" library="e-spulen-transformatoren" deviceset="TRANSFORMATOR" device="">
<attribute name="HERSTELLER" value=""/>
<attribute name="TYPE" value="24V"/>
</part>
<part name="Q1" library="e-schuetze-relais" deviceset="HAUPTSCHUETZ_3-POL" device="" value="40A"/>
<part name="ESP1" library="e-klemmen" deviceset="EINSPEISUNG_3-N-PE" device="" value="400V/50Hz"/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A4L-LOC" device=""/>
<part name="K9" library="automotive" deviceset="SWITCH_SPDT" device=""/>
<part name="K11" library="automotive" deviceset="SWITCH_NC" device="" value="Tank Empty"/>
<part name="K14" library="automotive" deviceset="SWITCH_NC" device="" value="Well Empty"/>
<part name="Q4" library="e-schuetze-relais" deviceset="RELAIS_2-POL-UM" device="" value="Tank Fill">
<attribute name="FUNKTION" value=""/>
<attribute name="HERSTELLER" value=""/>
<attribute name="TYPE" value=""/>
</part>
<part name="K15" library="automotive" deviceset="SWITCH_NO" device="" value="Low WM Tank"/>
<part name="K16" library="automotive" deviceset="SWITCH_NC" device="" value="High WM Tank"/>
<part name="F2" library="e-motorschutzschalter" deviceset="MOTORSCHUTZSCHALTER_3-POL_THERM_MAG_HANDBETAETIGT_HILFSKONTAKTE" device="" value="4-6.3A"/>
<part name="M2" library="e-motoren" deviceset="MOTOR_1-PHASEN" device="" value="Surface Pump"/>
<part name="Q2" library="e-schuetze-relais" deviceset="HAUPTSCHUETZ_3-POL" device="" value="40A"/>
<part name="F4" library="e-sicherungen" deviceset="LEITUNGSSCHUTZSCHALTER_2-POL" device="" value="6A"/>
<part name="K1" library="automotive" deviceset="SWITCH_NO" device="" value="Lights"/>
<part name="L1" library="e-lampen-signalisation" deviceset="SIGNALLAMPE" device="" value="Ceiling"/>
<part name="F5" library="e-sicherungen" deviceset="FEHLER-STROM-SCHUTZSCHALTER_2-POL" device="" value="16A/30mA"/>
<part name="J1" library="e-steckverbinder" deviceset="STECKDOSE" device=""/>
<part name="J2" library="e-steckverbinder" deviceset="STECKDOSE" device="">
<attribute name="SPICEPREFIX" value="J"/>
</part>
<part name="K2" library="automotive" deviceset="SWITCH_NC" device="" value="High Pressure"/>
<part name="K3" library="automotive" deviceset="SWITCH_NC" device="" value="High Pressure"/>
<part name="K4" library="automotive" deviceset="SWITCH_SPDT" device=""/>
<part name="Q5" library="e-schalter" deviceset="LASTTRENNSCHALTER_4-POL" device="" value="40A"/>
<part name="Q3" library="e-schuetze-relais" deviceset="RELAIS_2-POL-UM" device="" value="Well Empty">
<attribute name="FUNKTION" value=""/>
<attribute name="HERSTELLER" value=""/>
<attribute name="TYPE" value=""/>
</part>
<part name="Q6" library="e-schuetze-relais" deviceset="RELAIS_2-POL-UM" device="" value="High WM Tank">
<attribute name="FUNKTION" value=""/>
<attribute name="HERSTELLER" value=""/>
<attribute name="TYPE" value=""/>
</part>
<part name="Q7" library="e-schuetze-relais" deviceset="RELAIS_2-POL-UM" device="" value="Low WM Tank">
<attribute name="FUNKTION" value=""/>
<attribute name="HERSTELLER" value=""/>
<attribute name="TYPE" value=""/>
</part>
<part name="Q8" library="e-schuetze-relais" deviceset="RELAIS_2-POL-UM" device="" value="Tank Empty">
<attribute name="FUNKTION" value=""/>
<attribute name="HERSTELLER" value=""/>
<attribute name="TYPE" value=""/>
</part>
<part name="M1" library="e-motoren" deviceset="MOTOR_1-PHASEN" device="" value="Submersible Pump"/>
<part name="FRAME2" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A4L-LOC" device=""/>
</parts>
<sheets>
<sheet>
<description>&lt;b&gt;Mains voltage part&lt;/b&gt;</description>
<plain>
</plain>
<instances>
<instance part="F1" gate="G$1" x="81.28" y="109.22" smashed="yes">
<attribute name="PART" x="67.31" y="119.38" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="67.31" y="116.84" size="1.778" layer="96" rot="R180"/>
<attribute name="FUNKTION" x="67.31" y="109.22" size="1.778" layer="96" rot="R180"/>
<attribute name="TYPE" x="67.31" y="114.3" size="1.778" layer="96" rot="R180"/>
<attribute name="HERSTELLER" x="67.31" y="111.76" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="F3" gate="G$1" x="160.02" y="116.84" smashed="yes">
<attribute name="PART" x="151.13" y="119.38" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="151.13" y="116.84" size="1.778" layer="96" rot="R180"/>
<attribute name="FUNKTION" x="151.13" y="109.22" size="1.778" layer="96" rot="R180"/>
<attribute name="TYPE" x="151.13" y="114.3" size="1.778" layer="96" rot="R180"/>
<attribute name="HERSTELLER" x="151.13" y="111.76" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="T1" gate="1" x="160.02" y="96.52" smashed="yes" rot="R90">
<attribute name="PART" x="157.48" y="88.9" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="160.02" y="88.9" size="1.778" layer="96" rot="R270"/>
<attribute name="FUNKTION" x="173.99" y="91.44" size="1.778" layer="96" rot="R90"/>
<attribute name="TYPE" x="168.91" y="91.44" size="1.778" layer="96" rot="R90"/>
<attribute name="HERSTELLER" x="171.45" y="91.44" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="Q1" gate="G$2" x="81.28" y="86.36" smashed="yes">
<attribute name="PART" x="73.66" y="87.63" size="1.778" layer="95" rot="R180"/>
<attribute name="XREF" x="74.93" y="85.09" size="1.27" layer="95" rot="R180"/>
<attribute name="VALUE2" x="72.39" y="82.55" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="ESP1" gate="G$1" x="48.26" y="60.96" smashed="yes">
<attribute name="VALUE" x="34.29" y="57.15" size="1.778" layer="96"/>
</instance>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes">
<attribute name="DRAWING_NAME" x="217.17" y="15.24" size="2.54" layer="94"/>
<attribute name="LAST_DATE_TIME" x="217.17" y="10.16" size="2.286" layer="94"/>
<attribute name="SHEET" x="230.505" y="5.08" size="2.54" layer="94"/>
</instance>
<instance part="F2" gate="G$1" x="124.46" y="109.22" smashed="yes">
<attribute name="PART" x="110.49" y="119.38" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="110.49" y="116.84" size="1.778" layer="96" rot="R180"/>
<attribute name="FUNKTION" x="110.49" y="109.22" size="1.778" layer="96" rot="R180"/>
<attribute name="TYPE" x="110.49" y="114.3" size="1.778" layer="96" rot="R180"/>
<attribute name="HERSTELLER" x="110.49" y="111.76" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="M2" gate="1" x="127" y="60.96" smashed="yes">
<attribute name="PART" x="123.19" y="52.07" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="123.19" y="49.53" size="1.778" layer="96" rot="MR180"/>
<attribute name="FUNKTION" x="123.19" y="41.91" size="1.778" layer="96" rot="MR180"/>
<attribute name="TYPE" x="123.19" y="46.99" size="1.778" layer="96" rot="MR180"/>
<attribute name="HERSTELLER" x="123.19" y="44.45" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="Q2" gate="G$2" x="124.46" y="86.36" smashed="yes">
<attribute name="PART" x="116.84" y="87.63" size="1.778" layer="95" rot="R180"/>
<attribute name="XREF" x="118.11" y="85.09" size="1.27" layer="95" rot="R180"/>
<attribute name="VALUE2" x="115.57" y="82.55" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="F4" gate="G$1" x="182.88" y="116.84" smashed="yes">
<attribute name="PART" x="173.99" y="119.38" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="173.99" y="116.84" size="1.778" layer="96" rot="R180"/>
<attribute name="FUNKTION" x="173.99" y="109.22" size="1.778" layer="96" rot="R180"/>
<attribute name="TYPE" x="173.99" y="114.3" size="1.778" layer="96" rot="R180"/>
<attribute name="HERSTELLER" x="173.99" y="111.76" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="K1" gate="G$1" x="177.8" y="93.98" smashed="yes">
<attribute name="NAME" x="175.26" y="91.44" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="185.42" y="91.44" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="L1" gate="G$1" x="180.34" y="68.58" smashed="yes" rot="R90">
<attribute name="PART" x="177.8" y="66.04" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="180.34" y="66.04" size="1.778" layer="96" rot="R270"/>
<attribute name="FUNKTION" x="187.96" y="66.04" size="1.778" layer="96" rot="R270"/>
<attribute name="TYPE" x="182.88" y="66.04" size="1.778" layer="96" rot="R270"/>
<attribute name="HERSTELLER" x="185.42" y="66.04" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="F5" gate="G$1" x="205.74" y="116.84" smashed="yes">
<attribute name="PART" x="198.12" y="120.65" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="198.12" y="113.03" size="1.778" layer="96" rot="R180"/>
<attribute name="FUNKTION" x="198.12" y="105.41" size="1.778" layer="96" rot="R180"/>
<attribute name="TYPE" x="198.12" y="110.49" size="1.778" layer="96" rot="R180"/>
<attribute name="HERSTELLER" x="198.12" y="107.95" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="J1" gate="G$1" x="200.66" y="66.04" smashed="yes">
<attribute name="PART" x="203.2" y="59.69" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="J2" gate="G$1" x="215.9" y="66.04" smashed="yes">
<attribute name="PART" x="218.44" y="59.69" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="Q5" gate="G$1" x="43.18" y="116.84" smashed="yes">
<attribute name="PART" x="33.02" y="120.65" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="33.02" y="114.3" size="1.778" layer="96" rot="R180"/>
<attribute name="FUNKTION" x="33.02" y="106.68" size="1.778" layer="96" rot="R180"/>
<attribute name="TYPE" x="33.02" y="111.76" size="1.778" layer="96" rot="R180"/>
<attribute name="HERSTELLER" x="33.02" y="109.22" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="M1" gate="1" x="83.82" y="60.96" smashed="yes">
<attribute name="PART" x="80.01" y="52.07" size="1.778" layer="95" rot="MR180"/>
<attribute name="VALUE" x="80.01" y="49.53" size="1.778" layer="96" rot="MR180"/>
<attribute name="FUNKTION" x="80.01" y="41.91" size="1.778" layer="96" rot="MR180"/>
<attribute name="TYPE" x="80.01" y="46.99" size="1.778" layer="96" rot="MR180"/>
<attribute name="HERSTELLER" x="80.01" y="44.45" size="1.778" layer="96" rot="MR180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="L1-EXT" class="0">
<segment>
<pinref part="ESP1" gate="G$1" pin="L1-EXT"/>
<wire x1="38.1" y1="88.9" x2="38.1" y2="78.74" width="0.1524" layer="91"/>
<wire x1="38.1" y1="78.74" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
<pinref part="Q5" gate="G$1" pin="2"/>
<wire x1="38.1" y1="88.9" x2="38.1" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="L2-EXT" class="0">
<segment>
<pinref part="ESP1" gate="G$1" pin="L2-EXT"/>
<wire x1="43.18" y1="88.9" x2="43.18" y2="78.74" width="0.1524" layer="91"/>
<wire x1="43.18" y1="78.74" x2="43.18" y2="68.58" width="0.1524" layer="91"/>
<pinref part="Q5" gate="G$1" pin="4"/>
<wire x1="43.18" y1="88.9" x2="43.18" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="L3-EXT" class="0">
<segment>
<pinref part="ESP1" gate="G$1" pin="L3-EXT"/>
<wire x1="48.26" y1="88.9" x2="48.26" y2="78.74" width="0.1524" layer="91"/>
<wire x1="48.26" y1="78.74" x2="48.26" y2="68.58" width="0.1524" layer="91"/>
<pinref part="Q5" gate="G$1" pin="6"/>
<wire x1="48.26" y1="88.9" x2="48.26" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N-EXT" class="0">
<segment>
<pinref part="ESP1" gate="G$1" pin="N-EXT"/>
<wire x1="53.34" y1="88.9" x2="53.34" y2="78.74" width="0.1524" layer="91"/>
<wire x1="53.34" y1="78.74" x2="53.34" y2="68.58" width="0.1524" layer="91"/>
<pinref part="Q5" gate="G$1" pin="8"/>
<wire x1="53.34" y1="88.9" x2="53.34" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="Q1" gate="G$2" pin="6"/>
<wire x1="86.36" y1="81.28" x2="86.36" y2="68.58" width="0.1524" layer="91"/>
<pinref part="M1" gate="1" pin="V"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="F1" gate="G$1" pin="2"/>
<pinref part="Q1" gate="G$2" pin="1"/>
<wire x1="76.2" y1="101.6" x2="76.2" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="F1" gate="G$1" pin="6"/>
<pinref part="Q1" gate="G$2" pin="5"/>
<wire x1="86.36" y1="101.6" x2="86.36" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="F3" gate="G$1" pin="N@1"/>
<wire x1="160.02" y1="111.76" x2="160.02" y2="109.22" width="0.1524" layer="91"/>
<wire x1="160.02" y1="109.22" x2="165.1" y2="109.22" width="0.1524" layer="91"/>
<pinref part="T1" gate="1" pin="4"/>
<wire x1="165.1" y1="109.22" x2="165.1" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="M2" gate="1" pin="U"/>
<wire x1="119.38" y1="71.12" x2="124.46" y2="71.12" width="0.1524" layer="91"/>
<wire x1="124.46" y1="71.12" x2="124.46" y2="68.58" width="0.1524" layer="91"/>
<pinref part="Q2" gate="G$2" pin="2"/>
<wire x1="119.38" y1="81.28" x2="119.38" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="F2" gate="G$1" pin="6"/>
<pinref part="Q2" gate="G$2" pin="5"/>
<wire x1="129.54" y1="101.6" x2="129.54" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="Q2" gate="G$2" pin="6"/>
<pinref part="M2" gate="1" pin="V"/>
<wire x1="129.54" y1="81.28" x2="129.54" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="F2" gate="G$1" pin="2"/>
<pinref part="Q2" gate="G$2" pin="1"/>
<wire x1="119.38" y1="101.6" x2="119.38" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="F3" gate="G$1" pin="2"/>
<pinref part="T1" gate="1" pin="3"/>
<wire x1="154.94" y1="111.76" x2="154.94" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="24V_AC_1" class="0">
<segment>
<pinref part="T1" gate="1" pin="1"/>
<wire x1="154.94" y1="91.44" x2="154.94" y2="68.58" width="0.1524" layer="91"/>
<label x="154.94" y="68.58" size="1.778" layer="95" rot="R270" xref="yes"/>
</segment>
</net>
<net name="24V_AC_2" class="0">
<segment>
<pinref part="T1" gate="1" pin="2"/>
<wire x1="165.1" y1="91.44" x2="165.1" y2="68.58" width="0.1524" layer="91"/>
<label x="165.1" y="68.58" size="1.778" layer="95" rot="R270" xref="yes"/>
</segment>
</net>
<net name="P$1" class="0">
<segment>
<pinref part="F4" gate="G$1" pin="2"/>
<pinref part="K1" gate="G$1" pin="P$1"/>
<wire x1="177.8" y1="111.76" x2="177.8" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P$2" class="0">
<segment>
<pinref part="L1" gate="G$1" pin="X1"/>
<wire x1="175.26" y1="68.58" x2="172.72" y2="68.58" width="0.1524" layer="91"/>
<wire x1="172.72" y1="68.58" x2="172.72" y2="73.66" width="0.1524" layer="91"/>
<wire x1="172.72" y1="73.66" x2="177.8" y2="73.66" width="0.1524" layer="91"/>
<pinref part="K1" gate="G$1" pin="P$2"/>
<wire x1="177.8" y1="73.66" x2="177.8" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="F4" gate="G$1" pin="N@1"/>
<wire x1="182.88" y1="111.76" x2="182.88" y2="73.66" width="0.1524" layer="91"/>
<wire x1="182.88" y1="73.66" x2="187.96" y2="73.66" width="0.1524" layer="91"/>
<pinref part="L1" gate="G$1" pin="X2"/>
<wire x1="187.96" y1="73.66" x2="187.96" y2="68.58" width="0.1524" layer="91"/>
<wire x1="187.96" y1="68.58" x2="185.42" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="L1"/>
<wire x1="198.12" y1="68.58" x2="198.12" y2="71.12" width="0.1524" layer="91"/>
<wire x1="198.12" y1="71.12" x2="205.74" y2="71.12" width="0.1524" layer="91"/>
<pinref part="F5" gate="G$1" pin="2"/>
<wire x1="205.74" y1="71.12" x2="205.74" y2="104.14" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="L1"/>
<wire x1="213.36" y1="68.58" x2="213.36" y2="71.12" width="0.1524" layer="91"/>
<wire x1="213.36" y1="71.12" x2="205.74" y2="71.12" width="0.1524" layer="91"/>
<junction x="205.74" y="71.12"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="N"/>
<wire x1="203.2" y1="68.58" x2="203.2" y2="73.66" width="0.1524" layer="91"/>
<wire x1="203.2" y1="73.66" x2="210.82" y2="73.66" width="0.1524" layer="91"/>
<pinref part="F5" gate="G$1" pin="N'"/>
<wire x1="210.82" y1="73.66" x2="210.82" y2="104.14" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="N"/>
<wire x1="218.44" y1="68.58" x2="218.44" y2="73.66" width="0.1524" layer="91"/>
<wire x1="218.44" y1="73.66" x2="210.82" y2="73.66" width="0.1524" layer="91"/>
<junction x="210.82" y="73.66"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="F1" gate="G$1" pin="1"/>
<wire x1="38.1" y1="137.16" x2="76.2" y2="137.16" width="0.1524" layer="91"/>
<wire x1="76.2" y1="137.16" x2="76.2" y2="121.92" width="0.1524" layer="91"/>
<wire x1="76.2" y1="137.16" x2="99.06" y2="137.16" width="0.1524" layer="91"/>
<junction x="76.2" y="137.16"/>
<pinref part="F4" gate="G$1" pin="1"/>
<wire x1="99.06" y1="137.16" x2="154.94" y2="137.16" width="0.1524" layer="91"/>
<wire x1="154.94" y1="137.16" x2="177.8" y2="137.16" width="0.1524" layer="91"/>
<wire x1="177.8" y1="137.16" x2="177.8" y2="121.92" width="0.1524" layer="91"/>
<pinref part="Q5" gate="G$1" pin="1"/>
<wire x1="38.1" y1="121.92" x2="38.1" y2="137.16" width="0.1524" layer="91"/>
<pinref part="F3" gate="G$1" pin="1"/>
<wire x1="154.94" y1="121.92" x2="154.94" y2="124.46" width="0.1524" layer="91"/>
<wire x1="154.94" y1="137.16" x2="154.94" y2="124.46" width="0.1524" layer="91"/>
<junction x="154.94" y="137.16"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="43.18" y1="134.62" x2="81.28" y2="134.62" width="0.1524" layer="91"/>
<pinref part="F2" gate="G$1" pin="1"/>
<wire x1="119.38" y1="121.92" x2="119.38" y2="134.62" width="0.1524" layer="91"/>
<wire x1="119.38" y1="134.62" x2="116.84" y2="134.62" width="0.1524" layer="91"/>
<wire x1="116.84" y1="134.62" x2="81.28" y2="134.62" width="0.1524" layer="91"/>
<pinref part="Q5" gate="G$1" pin="3"/>
<wire x1="43.18" y1="121.92" x2="43.18" y2="134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<wire x1="48.26" y1="132.08" x2="86.36" y2="132.08" width="0.1524" layer="91"/>
<pinref part="F5" gate="G$1" pin="1"/>
<wire x1="86.36" y1="132.08" x2="205.74" y2="132.08" width="0.1524" layer="91"/>
<wire x1="205.74" y1="132.08" x2="205.74" y2="121.92" width="0.1524" layer="91"/>
<pinref part="Q5" gate="G$1" pin="5"/>
<wire x1="48.26" y1="121.92" x2="48.26" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<wire x1="53.34" y1="139.7" x2="86.36" y2="139.7" width="0.1524" layer="91"/>
<pinref part="F3" gate="G$1" pin="N"/>
<wire x1="86.36" y1="139.7" x2="129.54" y2="139.7" width="0.1524" layer="91"/>
<wire x1="129.54" y1="139.7" x2="160.02" y2="139.7" width="0.1524" layer="91"/>
<wire x1="160.02" y1="139.7" x2="160.02" y2="121.92" width="0.1524" layer="91"/>
<pinref part="F2" gate="G$1" pin="5"/>
<wire x1="129.54" y1="121.92" x2="129.54" y2="139.7" width="0.1524" layer="91"/>
<junction x="129.54" y="139.7"/>
<pinref part="F4" gate="G$1" pin="N"/>
<wire x1="160.02" y1="139.7" x2="182.88" y2="139.7" width="0.1524" layer="91"/>
<wire x1="182.88" y1="139.7" x2="182.88" y2="121.92" width="0.1524" layer="91"/>
<junction x="160.02" y="139.7"/>
<pinref part="F5" gate="G$1" pin="N"/>
<wire x1="182.88" y1="139.7" x2="210.82" y2="139.7" width="0.1524" layer="91"/>
<wire x1="210.82" y1="139.7" x2="210.82" y2="121.92" width="0.1524" layer="91"/>
<junction x="182.88" y="139.7"/>
<pinref part="Q5" gate="G$1" pin="7"/>
<wire x1="53.34" y1="121.92" x2="53.34" y2="139.7" width="0.1524" layer="91"/>
<pinref part="F1" gate="G$1" pin="5"/>
<wire x1="86.36" y1="121.92" x2="86.36" y2="139.7" width="0.1524" layer="91"/>
<junction x="86.36" y="139.7"/>
</segment>
</net>
<net name="PE-EXT" class="0">
<segment>
<wire x1="58.42" y1="129.54" x2="91.44" y2="129.54" width="0.1524" layer="91"/>
<wire x1="91.44" y1="129.54" x2="91.44" y2="68.58" width="0.1524" layer="91"/>
<pinref part="M2" gate="1" pin="PE"/>
<wire x1="134.62" y1="68.58" x2="134.62" y2="129.54" width="0.1524" layer="91"/>
<wire x1="134.62" y1="129.54" x2="91.44" y2="129.54" width="0.1524" layer="91"/>
<junction x="91.44" y="129.54"/>
<wire x1="134.62" y1="129.54" x2="226.06" y2="129.54" width="0.1524" layer="91"/>
<wire x1="226.06" y1="129.54" x2="226.06" y2="76.2" width="0.1524" layer="91"/>
<junction x="134.62" y="129.54"/>
<pinref part="J1" gate="G$1" pin="PE"/>
<wire x1="200.66" y1="68.58" x2="200.66" y2="76.2" width="0.1524" layer="91"/>
<wire x1="200.66" y1="76.2" x2="215.9" y2="76.2" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="PE"/>
<wire x1="215.9" y1="76.2" x2="215.9" y2="68.58" width="0.1524" layer="91"/>
<wire x1="226.06" y1="76.2" x2="215.9" y2="76.2" width="0.1524" layer="91"/>
<junction x="215.9" y="76.2"/>
<pinref part="ESP1" gate="G$1" pin="PE-EXT"/>
<wire x1="58.42" y1="68.58" x2="58.42" y2="129.54" width="0.1524" layer="91"/>
<pinref part="M1" gate="1" pin="PE"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="M1" gate="1" pin="U"/>
<wire x1="81.28" y1="68.58" x2="81.28" y2="71.12" width="0.1524" layer="91"/>
<wire x1="81.28" y1="71.12" x2="76.2" y2="71.12" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$2" pin="2"/>
<wire x1="76.2" y1="71.12" x2="76.2" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<description>&lt;b&gt;SELV powered part&lt;/b&gt;</description>
<plain>
<text x="55.88" y="71.12" size="1.778" layer="96" rot="R90">AUTO - OFF - MANUAL</text>
<text x="226.06" y="71.12" size="1.778" layer="96" rot="R90">AUTO - OFF - MANUAL</text>
</plain>
<instances>
<instance part="K9" gate="G$1" x="63.5" y="86.36" smashed="yes">
<attribute name="NAME" x="58.42" y="83.82" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="68.58" y="83.82" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="K11" gate="G$1" x="198.12" y="63.5" smashed="yes" rot="R180">
<attribute name="NAME" x="193.04" y="66.04" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="190.5" y="68.58" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="K14" gate="G$1" x="33.02" y="63.5" smashed="yes" rot="R180">
<attribute name="NAME" x="27.94" y="66.04" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="25.4" y="68.58" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="Q4" gate="1" x="170.18" y="86.36" smashed="yes" rot="MR0">
<attribute name="PART" x="173.99" y="88.9" size="1.778" layer="95" rot="MR180"/>
<attribute name="XREF" x="173.99" y="86.36" size="1.27" layer="95" rot="MR180"/>
</instance>
<instance part="Q4" gate="G$1" x="121.92" y="86.36" smashed="yes">
<attribute name="PART" x="118.11" y="88.9" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="118.11" y="86.36" size="1.778" layer="96" rot="R180"/>
<attribute name="FUNKTION" x="118.11" y="78.74" size="1.778" layer="96" rot="R180"/>
<attribute name="TYPE" x="118.11" y="83.82" size="1.778" layer="96" rot="R180"/>
<attribute name="HERSTELLER" x="118.11" y="81.28" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="Q4" gate="2" x="73.66" y="86.36" smashed="yes" rot="MR0">
<attribute name="PART" x="77.47" y="88.9" size="1.778" layer="95" rot="MR180"/>
<attribute name="XREF" x="77.47" y="86.36" size="1.27" layer="95" rot="MR180"/>
</instance>
<instance part="K15" gate="G$1" x="147.32" y="63.5" smashed="yes" rot="R180">
<attribute name="NAME" x="144.78" y="66.04" size="1.778" layer="95" rot="MR270"/>
<attribute name="VALUE" x="139.7" y="68.58" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="K16" gate="G$1" x="104.14" y="63.5" smashed="yes" rot="R180">
<attribute name="NAME" x="99.06" y="66.04" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="96.52" y="68.58" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="Q1" gate="G$1" x="45.72" y="86.36" smashed="yes">
<attribute name="PART" x="41.91" y="88.9" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="41.91" y="86.36" size="1.778" layer="96" rot="R180"/>
<attribute name="FUNKTION" x="41.91" y="78.74" size="1.778" layer="96" rot="R180"/>
<attribute name="TYPE" x="41.91" y="83.82" size="1.778" layer="96" rot="R180"/>
<attribute name="HERSTELLER" x="41.91" y="81.28" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="Q2" gate="G$1" x="210.82" y="86.36" smashed="yes">
<attribute name="PART" x="207.01" y="88.9" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="207.01" y="86.36" size="1.778" layer="96" rot="R180"/>
<attribute name="FUNKTION" x="207.01" y="78.74" size="1.778" layer="96" rot="R180"/>
<attribute name="TYPE" x="207.01" y="83.82" size="1.778" layer="96" rot="R180"/>
<attribute name="HERSTELLER" x="207.01" y="81.28" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="K2" gate="G$1" x="60.96" y="63.5" smashed="yes" rot="R180">
<attribute name="NAME" x="63.5" y="66.04" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="66.04" y="68.58" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="K3" gate="G$1" x="231.14" y="63.5" smashed="yes" rot="R180">
<attribute name="NAME" x="233.68" y="66.04" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="236.22" y="68.58" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="K4" gate="G$1" x="233.68" y="86.36" smashed="yes">
<attribute name="NAME" x="228.6" y="83.82" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="238.76" y="83.82" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="Q3" gate="G$1" x="33.02" y="86.36" smashed="yes">
<attribute name="PART" x="29.21" y="88.9" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="29.21" y="86.36" size="1.778" layer="96" rot="R180"/>
<attribute name="FUNKTION" x="29.21" y="78.74" size="1.778" layer="96" rot="R180"/>
<attribute name="TYPE" x="29.21" y="83.82" size="1.778" layer="96" rot="R180"/>
<attribute name="HERSTELLER" x="29.21" y="81.28" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="Q3" gate="1" x="45.72" y="63.5" smashed="yes" rot="MR0">
<attribute name="PART" x="49.53" y="66.04" size="1.778" layer="95" rot="MR180"/>
<attribute name="XREF" x="49.53" y="63.5" size="1.27" layer="95" rot="MR180"/>
</instance>
<instance part="Q6" gate="G$1" x="104.14" y="86.36" smashed="yes">
<attribute name="PART" x="100.33" y="88.9" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="100.33" y="86.36" size="1.778" layer="96" rot="R180"/>
<attribute name="FUNKTION" x="100.33" y="78.74" size="1.778" layer="96" rot="R180"/>
<attribute name="TYPE" x="100.33" y="83.82" size="1.778" layer="96" rot="R180"/>
<attribute name="HERSTELLER" x="100.33" y="81.28" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="Q6" gate="1" x="121.92" y="63.5" smashed="yes" rot="MR0">
<attribute name="PART" x="125.73" y="66.04" size="1.778" layer="95" rot="MR180"/>
<attribute name="XREF" x="125.73" y="63.5" size="1.27" layer="95" rot="MR180"/>
</instance>
<instance part="Q7" gate="G$1" x="147.32" y="86.36" smashed="yes">
<attribute name="PART" x="143.51" y="88.9" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="143.51" y="86.36" size="1.778" layer="96" rot="R180"/>
<attribute name="FUNKTION" x="143.51" y="78.74" size="1.778" layer="96" rot="R180"/>
<attribute name="TYPE" x="143.51" y="83.82" size="1.778" layer="96" rot="R180"/>
<attribute name="HERSTELLER" x="143.51" y="81.28" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="Q7" gate="1" x="162.56" y="63.5" smashed="yes" rot="MR0">
<attribute name="PART" x="166.37" y="66.04" size="1.778" layer="95" rot="MR180"/>
<attribute name="XREF" x="166.37" y="63.5" size="1.27" layer="95" rot="MR180"/>
</instance>
<instance part="Q8" gate="G$1" x="198.12" y="86.36" smashed="yes">
<attribute name="PART" x="194.31" y="88.9" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="194.31" y="86.36" size="1.778" layer="96" rot="R180"/>
<attribute name="FUNKTION" x="194.31" y="78.74" size="1.778" layer="96" rot="R180"/>
<attribute name="TYPE" x="194.31" y="83.82" size="1.778" layer="96" rot="R180"/>
<attribute name="HERSTELLER" x="194.31" y="81.28" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="Q8" gate="1" x="210.82" y="63.5" smashed="yes" rot="MR0">
<attribute name="PART" x="214.63" y="66.04" size="1.778" layer="95" rot="MR180"/>
<attribute name="XREF" x="214.63" y="63.5" size="1.27" layer="95" rot="MR180"/>
</instance>
<instance part="FRAME2" gate="G$1" x="0" y="0" smashed="yes">
<attribute name="DRAWING_NAME" x="217.17" y="15.24" size="2.54" layer="94"/>
<attribute name="LAST_DATE_TIME" x="217.17" y="10.16" size="2.286" layer="94"/>
<attribute name="SHEET" x="230.505" y="5.08" size="2.54" layer="94"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="P$1" class="0">
<segment>
<pinref part="K2" gate="G$1" pin="P$1"/>
<wire x1="60.96" y1="53.34" x2="60.96" y2="48.26" width="0.1524" layer="91"/>
<wire x1="60.96" y1="48.26" x2="71.12" y2="48.26" width="0.1524" layer="91"/>
<pinref part="Q4" gate="2" pin="4"/>
<wire x1="71.12" y1="81.28" x2="71.12" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P$2" class="0">
<segment>
<pinref part="K2" gate="G$1" pin="P$2"/>
<pinref part="K9" gate="G$1" pin="P$1"/>
<wire x1="60.96" y1="73.66" x2="60.96" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="K3" gate="G$1" pin="P$2"/>
<pinref part="K4" gate="G$1" pin="P$1"/>
<wire x1="231.14" y1="73.66" x2="231.14" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="K14" gate="G$1" pin="P$2"/>
<pinref part="Q3" gate="G$1" pin="A2"/>
<wire x1="33.02" y1="73.66" x2="33.02" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q6" gate="G$1" pin="A2"/>
<pinref part="K16" gate="G$1" pin="P$2"/>
<wire x1="104.14" y1="81.28" x2="104.14" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q7" gate="G$1" pin="A2"/>
<pinref part="K15" gate="G$1" pin="P$2"/>
<wire x1="147.32" y1="81.28" x2="147.32" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="K11" gate="G$1" pin="P$2"/>
<pinref part="Q8" gate="G$1" pin="A2"/>
<wire x1="198.12" y1="73.66" x2="198.12" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="24V_AC_1" class="0">
<segment>
<wire x1="33.02" y1="124.46" x2="33.02" y2="116.84" width="0.1524" layer="91"/>
<label x="33.02" y="124.46" size="1.778" layer="95" rot="R90" xref="yes"/>
<pinref part="Q1" gate="G$1" pin="A1"/>
<wire x1="33.02" y1="116.84" x2="45.72" y2="116.84" width="0.1524" layer="91"/>
<wire x1="45.72" y1="116.84" x2="104.14" y2="116.84" width="0.1524" layer="91"/>
<wire x1="104.14" y1="116.84" x2="121.92" y2="116.84" width="0.1524" layer="91"/>
<wire x1="121.92" y1="116.84" x2="147.32" y2="116.84" width="0.1524" layer="91"/>
<wire x1="147.32" y1="116.84" x2="198.12" y2="116.84" width="0.1524" layer="91"/>
<wire x1="45.72" y1="91.44" x2="45.72" y2="116.84" width="0.1524" layer="91"/>
<junction x="45.72" y="116.84"/>
<pinref part="Q4" gate="G$1" pin="A1"/>
<wire x1="121.92" y1="91.44" x2="121.92" y2="116.84" width="0.1524" layer="91"/>
<junction x="121.92" y="116.84"/>
<pinref part="Q3" gate="G$1" pin="A1"/>
<wire x1="33.02" y1="91.44" x2="33.02" y2="116.84" width="0.1524" layer="91"/>
<junction x="33.02" y="116.84"/>
<pinref part="Q6" gate="G$1" pin="A1"/>
<wire x1="104.14" y1="91.44" x2="104.14" y2="116.84" width="0.1524" layer="91"/>
<junction x="104.14" y="116.84"/>
<pinref part="Q7" gate="G$1" pin="A1"/>
<wire x1="147.32" y1="116.84" x2="147.32" y2="91.44" width="0.1524" layer="91"/>
<junction x="147.32" y="116.84"/>
<pinref part="Q8" gate="G$1" pin="A1"/>
<wire x1="198.12" y1="91.44" x2="198.12" y2="116.84" width="0.1524" layer="91"/>
<pinref part="Q2" gate="G$1" pin="A1"/>
<wire x1="210.82" y1="116.84" x2="210.82" y2="91.44" width="0.1524" layer="91"/>
<wire x1="198.12" y1="116.84" x2="210.82" y2="116.84" width="0.1524" layer="91"/>
<junction x="198.12" y="116.84"/>
</segment>
</net>
<net name="N1" class="0">
<segment>
<pinref part="K9" gate="G$1" pin="P$3"/>
<wire x1="50.8" y1="99.06" x2="63.5" y2="99.06" width="0.1524" layer="91"/>
<wire x1="63.5" y1="99.06" x2="63.5" y2="96.52" width="0.1524" layer="91"/>
<wire x1="43.18" y1="48.26" x2="50.8" y2="48.26" width="0.1524" layer="91"/>
<wire x1="50.8" y1="48.26" x2="50.8" y2="99.06" width="0.1524" layer="91"/>
<pinref part="Q3" gate="1" pin="4"/>
<wire x1="43.18" y1="48.26" x2="43.18" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="Q3" gate="1" pin="1"/>
<pinref part="Q1" gate="G$1" pin="A2"/>
<wire x1="45.72" y1="68.58" x2="45.72" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="Q4" gate="G$1" pin="A2"/>
<pinref part="Q6" gate="1" pin="1"/>
<wire x1="121.92" y1="81.28" x2="121.92" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="Q4" gate="1" pin="4"/>
<wire x1="119.38" y1="48.26" x2="160.02" y2="48.26" width="0.1524" layer="91"/>
<wire x1="160.02" y1="48.26" x2="167.64" y2="48.26" width="0.1524" layer="91"/>
<wire x1="167.64" y1="48.26" x2="167.64" y2="81.28" width="0.1524" layer="91"/>
<pinref part="Q6" gate="1" pin="4"/>
<wire x1="119.38" y1="58.42" x2="119.38" y2="48.26" width="0.1524" layer="91"/>
<pinref part="Q7" gate="1" pin="4"/>
<wire x1="160.02" y1="58.42" x2="160.02" y2="48.26" width="0.1524" layer="91"/>
<junction x="160.02" y="48.26"/>
</segment>
</net>
<net name="24V_AC_2" class="0">
<segment>
<pinref part="K11" gate="G$1" pin="P$1"/>
<wire x1="198.12" y1="53.34" x2="198.12" y2="48.26" width="0.1524" layer="91"/>
<pinref part="K15" gate="G$1" pin="P$1"/>
<wire x1="147.32" y1="53.34" x2="147.32" y2="50.8" width="0.1524" layer="91"/>
<pinref part="K16" gate="G$1" pin="P$1"/>
<wire x1="104.14" y1="53.34" x2="104.14" y2="48.26" width="0.1524" layer="91"/>
<pinref part="K14" gate="G$1" pin="P$1"/>
<wire x1="33.02" y1="53.34" x2="33.02" y2="48.26" width="0.1524" layer="91"/>
<wire x1="236.22" y1="73.66" x2="238.76" y2="73.66" width="0.1524" layer="91"/>
<wire x1="66.04" y1="73.66" x2="68.58" y2="73.66" width="0.1524" layer="91"/>
<pinref part="K3" gate="G$1" pin="P$1"/>
<wire x1="231.14" y1="53.34" x2="231.14" y2="48.26" width="0.1524" layer="91"/>
<wire x1="231.14" y1="48.26" x2="243.84" y2="48.26" width="0.1524" layer="91"/>
<wire x1="243.84" y1="48.26" x2="243.84" y2="111.76" width="0.1524" layer="91"/>
<wire x1="15.24" y1="124.46" x2="15.24" y2="111.76" width="0.1524" layer="91"/>
<label x="15.24" y="124.46" size="1.778" layer="95" rot="R90" xref="yes"/>
<pinref part="Q4" gate="2" pin="1"/>
<wire x1="15.24" y1="111.76" x2="68.58" y2="111.76" width="0.1524" layer="91"/>
<wire x1="68.58" y1="111.76" x2="73.66" y2="111.76" width="0.1524" layer="91"/>
<wire x1="73.66" y1="111.76" x2="81.28" y2="111.76" width="0.1524" layer="91"/>
<wire x1="81.28" y1="111.76" x2="83.82" y2="111.76" width="0.1524" layer="91"/>
<wire x1="83.82" y1="111.76" x2="127" y2="111.76" width="0.1524" layer="91"/>
<wire x1="127" y1="111.76" x2="154.94" y2="111.76" width="0.1524" layer="91"/>
<wire x1="154.94" y1="111.76" x2="162.56" y2="111.76" width="0.1524" layer="91"/>
<wire x1="162.56" y1="111.76" x2="170.18" y2="111.76" width="0.1524" layer="91"/>
<wire x1="170.18" y1="111.76" x2="180.34" y2="111.76" width="0.1524" layer="91"/>
<wire x1="180.34" y1="111.76" x2="220.98" y2="111.76" width="0.1524" layer="91"/>
<wire x1="73.66" y1="91.44" x2="73.66" y2="111.76" width="0.1524" layer="91"/>
<junction x="73.66" y="111.76"/>
<pinref part="Q4" gate="1" pin="1"/>
<wire x1="170.18" y1="91.44" x2="170.18" y2="111.76" width="0.1524" layer="91"/>
<junction x="170.18" y="111.76"/>
<wire x1="243.84" y1="111.76" x2="238.76" y2="111.76" width="0.1524" layer="91"/>
<wire x1="238.76" y1="111.76" x2="220.98" y2="111.76" width="0.1524" layer="91"/>
<wire x1="68.58" y1="73.66" x2="68.58" y2="111.76" width="0.1524" layer="91"/>
<junction x="68.58" y="111.76"/>
<wire x1="238.76" y1="73.66" x2="238.76" y2="111.76" width="0.1524" layer="91"/>
<junction x="238.76" y="111.76"/>
<wire x1="33.02" y1="48.26" x2="15.24" y2="48.26" width="0.1524" layer="91"/>
<wire x1="15.24" y1="48.26" x2="15.24" y2="111.76" width="0.1524" layer="91"/>
<junction x="15.24" y="111.76"/>
<wire x1="104.14" y1="48.26" x2="83.82" y2="48.26" width="0.1524" layer="91"/>
<wire x1="83.82" y1="48.26" x2="83.82" y2="111.76" width="0.1524" layer="91"/>
<junction x="83.82" y="111.76"/>
<wire x1="147.32" y1="50.8" x2="127" y2="50.8" width="0.1524" layer="91"/>
<wire x1="127" y1="50.8" x2="127" y2="111.76" width="0.1524" layer="91"/>
<junction x="127" y="111.76"/>
<pinref part="Q7" gate="1" pin="1"/>
<wire x1="162.56" y1="68.58" x2="162.56" y2="111.76" width="0.1524" layer="91"/>
<junction x="162.56" y="111.76"/>
<wire x1="198.12" y1="48.26" x2="180.34" y2="48.26" width="0.1524" layer="91"/>
<wire x1="180.34" y1="48.26" x2="180.34" y2="111.76" width="0.1524" layer="91"/>
<junction x="180.34" y="111.76"/>
<pinref part="K9" gate="G$1" pin="P$2"/>
<wire x1="66.04" y1="73.66" x2="66.04" y2="76.2" width="0.1524" layer="91"/>
<pinref part="K4" gate="G$1" pin="P$2"/>
<wire x1="236.22" y1="73.66" x2="236.22" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="Q8" gate="1" pin="1"/>
<pinref part="Q2" gate="G$1" pin="A2"/>
<wire x1="210.82" y1="68.58" x2="210.82" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N0" class="0">
<segment>
<pinref part="K4" gate="G$1" pin="P$3"/>
<wire x1="220.98" y1="99.06" x2="233.68" y2="99.06" width="0.1524" layer="91"/>
<wire x1="233.68" y1="99.06" x2="233.68" y2="96.52" width="0.1524" layer="91"/>
<wire x1="220.98" y1="48.26" x2="220.98" y2="99.06" width="0.1524" layer="91"/>
<pinref part="Q8" gate="1" pin="4"/>
<wire x1="208.28" y1="58.42" x2="208.28" y2="48.26" width="0.1524" layer="91"/>
<wire x1="208.28" y1="48.26" x2="220.98" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
