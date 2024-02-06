<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.05" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="yes" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<description>&lt;b&gt;Underfloor Heating&lt;/b&gt;
&lt;p&gt;&lt;i&gt;Operation "Valhalla"&lt;/i&gt;&lt;br /&gt;
CLASSIFIED: SECRET, NEED-TO-KNOW-ONLY&lt;/p&gt;
&lt;p&gt;This document aims to describe the in-plane pipe layout for the underfloor heating system.&lt;/p&gt;</description>
<libraries>
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
</parts>
<sheets>
<sheet>
<description>&lt;b&gt;Ground Floor&lt;/b&gt;
&lt;p&gt;&lt;i&gt;CLASSIFICATION: TOP SECRET, NEED-TO-KNOW ONLY&lt;/i&gt;&lt;/p&gt;
&lt;p&gt;This is the in-plane UFH pipe layout for the ground floor.&lt;/p&gt;</description>
<plain>
<wire x1="76.2" y1="147.32" x2="104.14" y2="147.32" width="0.2032" layer="97"/>
<wire x1="104.14" y1="147.32" x2="104.14" y2="12.7" width="0.2032" layer="97"/>
<wire x1="104.14" y1="12.7" x2="63.5" y2="12.7" width="0.2032" layer="97"/>
<wire x1="63.5" y1="12.7" x2="63.5" y2="83.82" width="0.2032" layer="97"/>
<wire x1="63.5" y1="83.82" x2="76.2" y2="83.82" width="0.2032" layer="97"/>
<wire x1="76.2" y1="83.82" x2="76.2" y2="147.32" width="0.2032" layer="97"/>
<dimension x1="104.14" y1="12.7" x2="63.5" y2="12.7" x3="83.82" y3="2.54" textsize="1.778" layer="97" unit="inch"/>
<rectangle x1="104.14" y1="88.9" x2="106.68" y2="109.22" layer="97"/>
<text x="104.14" y="12.7" size="1.778" layer="97" rot="R90">Incoming cables area</text>
<text x="68.58" y="76.2" size="1.778" layer="97">Pipe underpassage area</text>
<wire x1="106.68" y1="88.9" x2="106.68" y2="144.78" width="0.2032" layer="97"/>
<wire x1="106.68" y1="144.78" x2="182.88" y2="144.78" width="0.2032" layer="97"/>
<wire x1="182.88" y1="144.78" x2="182.88" y2="88.9" width="0.2032" layer="97"/>
<wire x1="182.88" y1="88.9" x2="106.68" y2="88.9" width="0.2032" layer="97"/>
<text x="127" y="96.52" size="1.778" layer="97">Appliance / Worktop area</text>
<text x="139.7" y="139.7" size="1.778" layer="97">Appliance / Worktop area</text>
<dimension x1="182.88" y1="144.78" x2="182.88" y2="88.9" x3="193.04" y3="116.84" textsize="1.778" layer="97" unit="inch"/>
<wire x1="106.68" y1="105.41" x2="109.22" y2="105.41" width="0.2032" layer="94"/>
<wire x1="106.68" y1="83.82" x2="182.88" y2="83.82" width="0.2032" layer="97"/>
<wire x1="182.88" y1="83.82" x2="182.88" y2="12.7" width="0.2032" layer="97"/>
<wire x1="182.88" y1="12.7" x2="106.68" y2="12.7" width="0.2032" layer="97"/>
<wire x1="106.68" y1="12.7" x2="106.68" y2="83.82" width="0.2032" layer="97"/>
<dimension x1="182.88" y1="83.82" x2="182.88" y2="12.7" x3="193.04" y3="48.26" textsize="1.778" layer="97" unit="inch"/>
<wire x1="109.22" y1="81.28" x2="180.34" y2="81.28" width="0.2032" layer="94"/>
<wire x1="180.34" y1="81.28" x2="180.34" y2="15.24" width="0.2032" layer="94"/>
<wire x1="180.34" y1="15.24" x2="109.22" y2="15.24" width="0.2032" layer="94"/>
<wire x1="109.22" y1="15.24" x2="109.22" y2="73.66" width="0.2032" layer="94"/>
<wire x1="109.22" y1="73.66" x2="175.26" y2="73.66" width="0.2032" layer="94"/>
<wire x1="175.26" y1="73.66" x2="175.26" y2="20.32" width="0.2032" layer="94"/>
<wire x1="175.26" y1="20.32" x2="116.84" y2="20.32" width="0.2032" layer="94"/>
<wire x1="116.84" y1="20.32" x2="116.84" y2="66.04" width="0.2032" layer="94"/>
<wire x1="116.84" y1="66.04" x2="170.18" y2="66.04" width="0.2032" layer="94"/>
<wire x1="170.18" y1="66.04" x2="170.18" y2="25.4" width="0.2032" layer="94"/>
<wire x1="170.18" y1="25.4" x2="124.46" y2="25.4" width="0.2032" layer="94"/>
<wire x1="124.46" y1="25.4" x2="124.46" y2="58.42" width="0.2032" layer="94"/>
<wire x1="124.46" y1="58.42" x2="162.56" y2="58.42" width="0.2032" layer="94"/>
<wire x1="162.56" y1="58.42" x2="162.56" y2="33.02" width="0.2032" layer="94"/>
<wire x1="162.56" y1="33.02" x2="132.08" y2="33.02" width="0.2032" layer="94"/>
<wire x1="109.22" y1="81.28" x2="109.22" y2="77.47" width="0.2032" layer="94"/>
<wire x1="109.22" y1="77.47" x2="177.8" y2="77.47" width="0.2032" layer="94"/>
<wire x1="177.8" y1="77.47" x2="177.8" y2="17.78" width="0.2032" layer="94"/>
<wire x1="177.8" y1="17.78" x2="113.03" y2="17.78" width="0.2032" layer="94"/>
<wire x1="113.03" y1="17.78" x2="113.03" y2="69.85" width="0.2032" layer="94"/>
<wire x1="113.03" y1="69.85" x2="172.72" y2="69.85" width="0.2032" layer="94"/>
<wire x1="172.72" y1="69.85" x2="172.72" y2="22.86" width="0.2032" layer="94"/>
<wire x1="172.72" y1="22.86" x2="120.65" y2="22.86" width="0.2032" layer="94"/>
<wire x1="120.65" y1="22.86" x2="120.65" y2="62.23" width="0.2032" layer="94"/>
<wire x1="120.65" y1="62.23" x2="166.37" y2="62.23" width="0.2032" layer="94"/>
<wire x1="166.37" y1="62.23" x2="166.37" y2="29.21" width="0.2032" layer="94"/>
<wire x1="166.37" y1="29.21" x2="128.27" y2="29.21" width="0.2032" layer="94"/>
<wire x1="128.27" y1="29.21" x2="128.27" y2="54.61" width="0.2032" layer="94"/>
<wire x1="128.27" y1="54.61" x2="158.75" y2="54.61" width="0.2032" layer="94"/>
<wire x1="158.75" y1="54.61" x2="158.75" y2="36.83" width="0.2032" layer="94"/>
<wire x1="158.75" y1="36.83" x2="135.89" y2="36.83" width="0.2032" layer="94"/>
<wire x1="60.96" y1="83.82" x2="12.7" y2="83.82" width="0.2032" layer="97"/>
<wire x1="12.7" y1="83.82" x2="12.7" y2="12.7" width="0.2032" layer="97"/>
<wire x1="12.7" y1="12.7" x2="35.56" y2="12.7" width="0.2032" layer="97"/>
<wire x1="35.56" y1="12.7" x2="35.56" y2="43.18" width="0.2032" layer="97"/>
<wire x1="35.56" y1="43.18" x2="60.96" y2="43.18" width="0.2032" layer="97"/>
<wire x1="60.96" y1="43.18" x2="60.96" y2="83.82" width="0.2032" layer="97"/>
<dimension x1="12.7" y1="12.7" x2="35.56" y2="12.7" x3="24.13" y3="2.54" textsize="1.778" layer="97" unit="inch"/>
<dimension x1="12.7" y1="83.82" x2="12.7" y2="12.7" x3="2.54" y3="48.26" textsize="1.778" layer="97" unit="inch"/>
<dimension x1="35.56" y1="43.18" x2="60.96" y2="43.18" x3="48.26" y3="2.54" textsize="1.778" layer="97" unit="inch"/>
<text x="15.24" y="27.94" size="1.778" layer="97">Shower area</text>
<text x="25.4" y="63.5" size="1.778" layer="97" rot="R90">Toilet area</text>
<wire x1="58.42" y1="81.28" x2="58.42" y2="45.72" width="0.2032" layer="94"/>
<wire x1="58.42" y1="45.72" x2="15.24" y2="45.72" width="0.2032" layer="94"/>
<wire x1="15.24" y1="45.72" x2="15.24" y2="58.42" width="0.2032" layer="94"/>
<wire x1="15.24" y1="58.42" x2="30.48" y2="58.42" width="0.2032" layer="94"/>
<wire x1="30.48" y1="58.42" x2="30.48" y2="76.2" width="0.2032" layer="94"/>
<wire x1="30.48" y1="76.2" x2="53.34" y2="76.2" width="0.2032" layer="94"/>
<wire x1="53.34" y1="76.2" x2="53.34" y2="50.8" width="0.2032" layer="94"/>
<wire x1="58.42" y1="81.28" x2="55.88" y2="81.28" width="0.2032" layer="94"/>
<wire x1="55.88" y1="81.28" x2="55.88" y2="48.26" width="0.2032" layer="94"/>
<wire x1="55.88" y1="48.26" x2="17.78" y2="48.26" width="0.2032" layer="94"/>
<wire x1="17.78" y1="48.26" x2="17.78" y2="55.88" width="0.2032" layer="94"/>
<wire x1="17.78" y1="55.88" x2="33.02" y2="55.88" width="0.2032" layer="94"/>
<wire x1="33.02" y1="55.88" x2="33.02" y2="73.66" width="0.2032" layer="94"/>
<wire x1="33.02" y1="73.66" x2="50.8" y2="73.66" width="0.2032" layer="94"/>
<wire x1="50.8" y1="73.66" x2="50.8" y2="53.34" width="0.2032" layer="94"/>
<wire x1="38.1" y1="53.34" x2="50.8" y2="53.34" width="0.2032" layer="94"/>
<wire x1="76.2" y1="147.32" x2="12.7" y2="147.32" width="0.2032" layer="97"/>
<wire x1="12.7" y1="147.32" x2="12.7" y2="231.14" width="0.2032" layer="97"/>
<wire x1="12.7" y1="231.14" x2="182.88" y2="231.14" width="0.2032" layer="97"/>
<wire x1="182.88" y1="231.14" x2="182.88" y2="147.32" width="0.2032" layer="97"/>
<wire x1="182.88" y1="147.32" x2="104.14" y2="147.32" width="0.2032" layer="97"/>
<dimension x1="12.7" y1="147.32" x2="12.7" y2="231.14" x3="2.54" y3="189.23" textsize="1.778" layer="97" unit="inch"/>
<dimension x1="12.7" y1="231.14" x2="182.88" y2="231.14" x3="97.79" y3="241.3" textsize="1.778" layer="97" unit="inch"/>
<text x="20.32" y="177.8" size="1.778" layer="97" rot="R90">Media center area</text>
<dimension x1="182.88" y1="12.7" x2="106.68" y2="12.7" x3="144.78" y3="2.54" textsize="1.778" layer="97" unit="inch"/>
<wire x1="104.14" y1="97.79" x2="99.06" y2="97.79" width="0.2032" layer="94"/>
<wire x1="99.06" y1="97.79" x2="99.06" y2="77.47" width="0.2032" layer="94"/>
<wire x1="99.06" y1="77.47" x2="100.33" y2="76.2" width="0.2032" layer="94"/>
<wire x1="100.33" y1="76.2" x2="100.33" y2="15.24" width="0.2032" layer="94"/>
<wire x1="100.33" y1="15.24" x2="66.04" y2="15.24" width="0.2032" layer="94"/>
<wire x1="66.04" y1="15.24" x2="66.04" y2="81.28" width="0.2032" layer="94"/>
<wire x1="66.04" y1="81.28" x2="78.74" y2="81.28" width="0.2032" layer="94"/>
<wire x1="78.74" y1="81.28" x2="78.74" y2="144.78" width="0.2032" layer="94"/>
<wire x1="78.74" y1="144.78" x2="99.06" y2="144.78" width="0.2032" layer="94"/>
<wire x1="99.06" y1="144.78" x2="99.06" y2="104.14" width="0.2032" layer="94"/>
<wire x1="99.06" y1="104.14" x2="91.44" y2="104.14" width="0.2032" layer="94"/>
<wire x1="91.44" y1="104.14" x2="91.44" y2="77.47" width="0.2032" layer="94"/>
<wire x1="91.44" y1="77.47" x2="92.71" y2="76.2" width="0.2032" layer="94"/>
<wire x1="92.71" y1="76.2" x2="92.71" y2="20.32" width="0.2032" layer="94"/>
<wire x1="92.71" y1="20.32" x2="73.66" y2="20.32" width="0.2032" layer="94"/>
<wire x1="73.66" y1="20.32" x2="73.66" y2="73.66" width="0.2032" layer="94"/>
<wire x1="104.14" y1="100.33" x2="95.25" y2="100.33" width="0.2032" layer="94"/>
<wire x1="95.25" y1="100.33" x2="95.25" y2="77.47" width="0.2032" layer="94"/>
<wire x1="95.25" y1="77.47" x2="96.52" y2="76.2" width="0.2032" layer="94"/>
<wire x1="96.52" y1="76.2" x2="96.52" y2="17.78" width="0.2032" layer="94"/>
<wire x1="96.52" y1="17.78" x2="69.85" y2="17.78" width="0.2032" layer="94"/>
<wire x1="69.85" y1="17.78" x2="69.85" y2="77.47" width="0.2032" layer="94"/>
<wire x1="69.85" y1="77.47" x2="82.55" y2="77.47" width="0.2032" layer="94"/>
<wire x1="82.55" y1="77.47" x2="82.55" y2="140.97" width="0.2032" layer="94"/>
<wire x1="82.55" y1="140.97" x2="95.25" y2="140.97" width="0.2032" layer="94"/>
<wire x1="95.25" y1="140.97" x2="95.25" y2="107.95" width="0.2032" layer="94"/>
<wire x1="95.25" y1="107.95" x2="91.44" y2="107.95" width="0.2032" layer="94"/>
<wire x1="91.44" y1="107.95" x2="91.44" y2="137.16" width="0.2032" layer="94"/>
<wire x1="91.44" y1="137.16" x2="86.36" y2="137.16" width="0.2032" layer="94"/>
<wire x1="77.47" y1="69.85" x2="77.47" y2="22.86" width="0.2032" layer="94"/>
<wire x1="77.47" y1="22.86" x2="88.9" y2="22.86" width="0.2032" layer="94"/>
<wire x1="88.9" y1="22.86" x2="88.9" y2="76.2" width="0.2032" layer="94"/>
<wire x1="88.9" y1="76.2" x2="86.36" y2="78.74" width="0.2032" layer="94"/>
<wire x1="86.36" y1="78.74" x2="86.36" y2="137.16" width="0.2032" layer="94"/>
<text x="10.16" y="40.64" size="1.778" layer="97" rot="R90">19.5m pipe
4.5m header</text>
<text x="185.42" y="58.42" size="1.778" layer="97" rot="R270">59.5m pipe
1.5m header</text>
<text x="10.16" y="182.88" size="1.778" layer="97" rot="R90">63.9m pipe
9.3m header</text>
<text x="93.98" y="10.16" size="1.778" layer="97" rot="R180">43.65m pipe
no header</text>
<text x="185.42" y="124.46" size="1.778" layer="97" rot="R270">32m pipe
no header</text>
<text x="2.54" y="96.52" size="1.778" layer="97">0 m</text>
<text x="27.94" y="96.52" size="1.778" layer="97">1 m</text>
<text x="53.34" y="96.52" size="1.778" layer="97">2 m</text>
<text x="66.04" y="96.52" size="1.778" layer="97">2.5 m</text>
<wire x1="2.54" y1="91.44" x2="15.24" y2="91.44" width="0.2032" layer="97"/>
<wire x1="15.24" y1="91.44" x2="15.24" y2="88.9" width="0.2032" layer="97"/>
<wire x1="15.24" y1="88.9" x2="2.54" y2="88.9" width="0.2032" layer="97"/>
<wire x1="2.54" y1="88.9" x2="2.54" y2="91.44" width="0.2032" layer="97"/>
<wire x1="27.94" y1="91.44" x2="33.02" y2="91.44" width="0.2032" layer="97"/>
<wire x1="33.02" y1="91.44" x2="33.02" y2="88.9" width="0.2032" layer="97"/>
<wire x1="33.02" y1="88.9" x2="27.94" y2="88.9" width="0.2032" layer="97"/>
<wire x1="27.94" y1="88.9" x2="27.94" y2="91.44" width="0.2032" layer="97"/>
<wire x1="38.1" y1="91.44" x2="38.1" y2="88.9" width="0.2032" layer="97"/>
<wire x1="38.1" y1="88.9" x2="43.18" y2="88.9" width="0.2032" layer="97"/>
<wire x1="43.18" y1="88.9" x2="43.18" y2="91.44" width="0.2032" layer="97"/>
<wire x1="43.18" y1="91.44" x2="38.1" y2="91.44" width="0.2032" layer="97"/>
<wire x1="48.26" y1="91.44" x2="48.26" y2="88.9" width="0.2032" layer="97"/>
<wire x1="48.26" y1="88.9" x2="53.34" y2="88.9" width="0.2032" layer="97"/>
<wire x1="53.34" y1="88.9" x2="53.34" y2="91.44" width="0.2032" layer="97"/>
<wire x1="53.34" y1="91.44" x2="48.26" y2="91.44" width="0.2032" layer="97"/>
<rectangle x1="15.24" y1="88.9" x2="27.94" y2="91.44" layer="97"/>
<rectangle x1="33.02" y1="88.9" x2="38.1" y2="91.44" layer="97"/>
<rectangle x1="43.18" y1="88.9" x2="48.26" y2="91.44" layer="97"/>
<rectangle x1="53.34" y1="88.9" x2="55.88" y2="91.44" layer="97"/>
<rectangle x1="58.42" y1="88.9" x2="60.96" y2="91.44" layer="97"/>
<rectangle x1="63.5" y1="88.9" x2="66.04" y2="91.44" layer="97"/>
<wire x1="55.88" y1="91.44" x2="58.42" y2="91.44" width="0.2032" layer="97"/>
<wire x1="58.42" y1="91.44" x2="58.42" y2="88.9" width="0.2032" layer="97"/>
<wire x1="58.42" y1="88.9" x2="55.88" y2="88.9" width="0.2032" layer="97"/>
<wire x1="55.88" y1="88.9" x2="55.88" y2="91.44" width="0.2032" layer="97"/>
<wire x1="60.96" y1="91.44" x2="63.5" y2="91.44" width="0.2032" layer="97"/>
<wire x1="63.5" y1="91.44" x2="63.5" y2="88.9" width="0.2032" layer="97"/>
<wire x1="63.5" y1="88.9" x2="60.96" y2="88.9" width="0.2032" layer="97"/>
<wire x1="60.96" y1="88.9" x2="60.96" y2="91.44" width="0.2032" layer="97"/>
<wire x1="2.54" y1="91.44" x2="2.54" y2="96.52" width="0.2032" layer="97"/>
<wire x1="27.94" y1="91.44" x2="27.94" y2="96.52" width="0.2032" layer="97"/>
<wire x1="33.02" y1="91.44" x2="33.02" y2="93.98" width="0.2032" layer="97"/>
<wire x1="38.1" y1="91.44" x2="38.1" y2="93.98" width="0.2032" layer="97"/>
<wire x1="43.18" y1="91.44" x2="43.18" y2="93.98" width="0.2032" layer="97"/>
<wire x1="48.26" y1="91.44" x2="48.26" y2="93.98" width="0.2032" layer="97"/>
<wire x1="53.34" y1="91.44" x2="53.34" y2="96.52" width="0.2032" layer="97"/>
<wire x1="15.24" y1="91.44" x2="15.24" y2="93.98" width="0.2032" layer="97"/>
<wire x1="66.04" y1="91.44" x2="66.04" y2="96.52" width="0.2032" layer="97"/>
<polygon width="0.2032" layer="94">
<vertex x="99.06" y="91.44"/>
<vertex x="97.79" y="96.52"/>
<vertex x="100.33" y="96.52"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="95.25" y="99.06"/>
<vertex x="96.52" y="93.98"/>
<vertex x="93.98" y="93.98"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="58.42" y="73.66"/>
<vertex x="57.15" y="78.74"/>
<vertex x="59.69" y="78.74"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="55.88" y="78.74"/>
<vertex x="57.15" y="73.66"/>
<vertex x="54.61" y="73.66"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="109.22" y="107.95"/>
<vertex x="114.3" y="109.22"/>
<vertex x="114.3" y="106.68"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="116.84" y="104.14"/>
<vertex x="111.76" y="102.87"/>
<vertex x="111.76" y="105.41"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="116.84" y="81.28"/>
<vertex x="111.76" y="80.01"/>
<vertex x="111.76" y="82.55"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="111.76" y="77.47"/>
<vertex x="116.84" y="78.74"/>
<vertex x="116.84" y="76.2"/>
</polygon>
<wire x1="132.08" y1="33.02" x2="132.08" y2="50.8" width="0.2032" layer="94"/>
<wire x1="132.08" y1="50.8" x2="154.94" y2="50.8" width="0.2032" layer="94"/>
<wire x1="154.94" y1="50.8" x2="154.94" y2="40.64" width="0.2032" layer="94"/>
<wire x1="154.94" y1="40.64" x2="146.05" y2="40.64" width="0.2032" layer="94"/>
<wire x1="135.89" y1="36.83" x2="135.89" y2="46.99" width="0.2032" layer="94"/>
<wire x1="135.89" y1="46.99" x2="146.05" y2="46.99" width="0.2032" layer="94"/>
<wire x1="146.05" y1="46.99" x2="146.05" y2="40.64" width="0.2032" layer="94"/>
<wire x1="53.34" y1="50.8" x2="20.32" y2="50.8" width="0.2032" layer="94"/>
<wire x1="20.32" y1="50.8" x2="20.32" y2="53.34" width="0.2032" layer="94"/>
<wire x1="20.32" y1="53.34" x2="35.56" y2="53.34" width="0.2032" layer="94"/>
<wire x1="35.56" y1="53.34" x2="35.56" y2="71.12" width="0.2032" layer="94"/>
<wire x1="35.56" y1="71.12" x2="48.26" y2="71.12" width="0.2032" layer="94"/>
<wire x1="48.26" y1="71.12" x2="48.26" y2="55.88" width="0.2032" layer="94"/>
<wire x1="48.26" y1="55.88" x2="40.64" y2="55.88" width="0.2032" layer="94"/>
<wire x1="40.64" y1="55.88" x2="40.64" y2="66.04" width="0.2032" layer="94"/>
<wire x1="40.64" y1="66.04" x2="43.18" y2="66.04" width="0.2032" layer="94"/>
<wire x1="38.1" y1="53.34" x2="38.1" y2="68.58" width="0.2032" layer="94"/>
<wire x1="38.1" y1="68.58" x2="45.72" y2="68.58" width="0.2032" layer="94"/>
<wire x1="45.72" y1="68.58" x2="45.72" y2="58.42" width="0.2032" layer="94"/>
<wire x1="45.72" y1="58.42" x2="43.18" y2="58.42" width="0.2032" layer="94"/>
<wire x1="43.18" y1="58.42" x2="43.18" y2="66.04" width="0.2032" layer="94"/>
<wire x1="73.66" y1="73.66" x2="85.09" y2="73.66" width="0.2032" layer="94"/>
<wire x1="85.09" y1="73.66" x2="85.09" y2="25.4" width="0.2032" layer="94"/>
<wire x1="85.09" y1="25.4" x2="81.28" y2="25.4" width="0.2032" layer="94"/>
<wire x1="81.28" y1="25.4" x2="81.28" y2="69.85" width="0.2032" layer="94"/>
<wire x1="81.28" y1="69.85" x2="77.47" y2="69.85" width="0.2032" layer="94"/>
<wire x1="27.94" y1="152.4" x2="27.94" y2="228.6" width="0.2032" layer="94"/>
<wire x1="27.94" y1="228.6" x2="96.52" y2="228.6" width="0.2032" layer="94"/>
<wire x1="96.52" y1="228.6" x2="96.52" y2="152.4" width="0.2032" layer="94"/>
<wire x1="96.52" y1="152.4" x2="35.56" y2="152.4" width="0.2032" layer="94"/>
<wire x1="35.56" y1="152.4" x2="35.56" y2="223.52" width="0.2032" layer="94"/>
<wire x1="35.56" y1="223.52" x2="88.9" y2="223.52" width="0.2032" layer="94"/>
<wire x1="88.9" y1="223.52" x2="88.9" y2="160.02" width="0.2032" layer="94"/>
<wire x1="88.9" y1="160.02" x2="43.18" y2="160.02" width="0.2032" layer="94"/>
<wire x1="43.18" y1="160.02" x2="43.18" y2="218.44" width="0.2032" layer="94"/>
<wire x1="43.18" y1="218.44" x2="81.28" y2="218.44" width="0.2032" layer="94"/>
<wire x1="81.28" y1="218.44" x2="81.28" y2="167.64" width="0.2032" layer="94"/>
<wire x1="81.28" y1="167.64" x2="50.8" y2="167.64" width="0.2032" layer="94"/>
<wire x1="50.8" y1="167.64" x2="50.8" y2="210.82" width="0.2032" layer="94"/>
<wire x1="50.8" y1="210.82" x2="73.66" y2="210.82" width="0.2032" layer="94"/>
<wire x1="73.66" y1="210.82" x2="73.66" y2="175.26" width="0.2032" layer="94"/>
<wire x1="73.66" y1="175.26" x2="58.42" y2="175.26" width="0.2032" layer="94"/>
<wire x1="58.42" y1="175.26" x2="58.42" y2="203.2" width="0.2032" layer="94"/>
<wire x1="58.42" y1="203.2" x2="66.04" y2="203.2" width="0.2032" layer="94"/>
<wire x1="66.04" y1="203.2" x2="66.04" y2="182.88" width="0.2032" layer="94"/>
<wire x1="27.94" y1="152.4" x2="31.75" y2="152.4" width="0.2032" layer="94"/>
<wire x1="31.75" y1="152.4" x2="31.75" y2="226.06" width="0.2032" layer="94"/>
<wire x1="31.75" y1="226.06" x2="92.71" y2="226.06" width="0.2032" layer="94"/>
<wire x1="92.71" y1="226.06" x2="92.71" y2="156.21" width="0.2032" layer="94"/>
<wire x1="92.71" y1="156.21" x2="39.37" y2="156.21" width="0.2032" layer="94"/>
<wire x1="39.37" y1="156.21" x2="39.37" y2="220.98" width="0.2032" layer="94"/>
<wire x1="39.37" y1="220.98" x2="85.09" y2="220.98" width="0.2032" layer="94"/>
<wire x1="85.09" y1="220.98" x2="85.09" y2="163.83" width="0.2032" layer="94"/>
<wire x1="85.09" y1="163.83" x2="46.99" y2="163.83" width="0.2032" layer="94"/>
<wire x1="46.99" y1="163.83" x2="46.99" y2="214.63" width="0.2032" layer="94"/>
<wire x1="46.99" y1="214.63" x2="77.47" y2="214.63" width="0.2032" layer="94"/>
<wire x1="77.47" y1="214.63" x2="77.47" y2="171.45" width="0.2032" layer="94"/>
<wire x1="77.47" y1="171.45" x2="54.61" y2="171.45" width="0.2032" layer="94"/>
<wire x1="54.61" y1="171.45" x2="54.61" y2="207.01" width="0.2032" layer="94"/>
<wire x1="54.61" y1="207.01" x2="69.85" y2="207.01" width="0.2032" layer="94"/>
<wire x1="69.85" y1="207.01" x2="69.85" y2="179.07" width="0.2032" layer="94"/>
<wire x1="69.85" y1="179.07" x2="60.96" y2="179.07" width="0.2032" layer="94"/>
<wire x1="63.5" y1="182.88" x2="66.04" y2="182.88" width="0.2032" layer="94"/>
<wire x1="60.96" y1="179.07" x2="60.96" y2="199.39" width="0.2032" layer="94"/>
<wire x1="60.96" y1="199.39" x2="63.5" y2="199.39" width="0.2032" layer="94"/>
<wire x1="63.5" y1="199.39" x2="63.5" y2="182.88" width="0.2032" layer="94"/>
<wire x1="180.34" y1="152.4" x2="180.34" y2="228.6" width="0.2032" layer="94"/>
<wire x1="180.34" y1="228.6" x2="101.6" y2="228.6" width="0.2032" layer="94"/>
<wire x1="101.6" y1="228.6" x2="101.6" y2="152.4" width="0.2032" layer="94"/>
<wire x1="101.6" y1="152.4" x2="175.26" y2="152.4" width="0.2032" layer="94"/>
<wire x1="175.26" y1="152.4" x2="175.26" y2="223.52" width="0.2032" layer="94"/>
<wire x1="175.26" y1="223.52" x2="109.22" y2="223.52" width="0.2032" layer="94"/>
<wire x1="109.22" y1="223.52" x2="109.22" y2="160.02" width="0.2032" layer="94"/>
<wire x1="109.22" y1="160.02" x2="170.18" y2="160.02" width="0.2032" layer="94"/>
<wire x1="170.18" y1="160.02" x2="170.18" y2="218.44" width="0.2032" layer="94"/>
<wire x1="170.18" y1="218.44" x2="116.84" y2="218.44" width="0.2032" layer="94"/>
<wire x1="116.84" y1="218.44" x2="116.84" y2="167.64" width="0.2032" layer="94"/>
<wire x1="116.84" y1="167.64" x2="162.56" y2="167.64" width="0.2032" layer="94"/>
<wire x1="162.56" y1="167.64" x2="162.56" y2="210.82" width="0.2032" layer="94"/>
<wire x1="162.56" y1="210.82" x2="124.46" y2="210.82" width="0.2032" layer="94"/>
<wire x1="124.46" y1="210.82" x2="124.46" y2="175.26" width="0.2032" layer="94"/>
<wire x1="124.46" y1="175.26" x2="154.94" y2="175.26" width="0.2032" layer="94"/>
<wire x1="154.94" y1="175.26" x2="154.94" y2="203.2" width="0.2032" layer="94"/>
<wire x1="154.94" y1="203.2" x2="132.08" y2="203.2" width="0.2032" layer="94"/>
<wire x1="132.08" y1="203.2" x2="132.08" y2="182.88" width="0.2032" layer="94"/>
<wire x1="132.08" y1="182.88" x2="147.32" y2="182.88" width="0.2032" layer="94"/>
<wire x1="147.32" y1="182.88" x2="147.32" y2="195.58" width="0.2032" layer="94"/>
<wire x1="147.32" y1="195.58" x2="139.7" y2="195.58" width="0.2032" layer="94"/>
<wire x1="180.34" y1="152.4" x2="177.8" y2="152.4" width="0.2032" layer="94"/>
<wire x1="177.8" y1="152.4" x2="177.8" y2="226.06" width="0.2032" layer="94"/>
<wire x1="177.8" y1="226.06" x2="105.41" y2="226.06" width="0.2032" layer="94"/>
<wire x1="105.41" y1="226.06" x2="105.41" y2="156.21" width="0.2032" layer="94"/>
<wire x1="105.41" y1="156.21" x2="172.72" y2="156.21" width="0.2032" layer="94"/>
<wire x1="172.72" y1="156.21" x2="172.72" y2="220.98" width="0.2032" layer="94"/>
<wire x1="172.72" y1="220.98" x2="113.03" y2="220.98" width="0.2032" layer="94"/>
<wire x1="113.03" y1="220.98" x2="113.03" y2="163.83" width="0.2032" layer="94"/>
<wire x1="113.03" y1="163.83" x2="166.37" y2="163.83" width="0.2032" layer="94"/>
<wire x1="166.37" y1="163.83" x2="166.37" y2="214.63" width="0.2032" layer="94"/>
<wire x1="166.37" y1="214.63" x2="120.65" y2="214.63" width="0.2032" layer="94"/>
<wire x1="120.65" y1="214.63" x2="120.65" y2="171.45" width="0.2032" layer="94"/>
<wire x1="120.65" y1="171.45" x2="158.75" y2="171.45" width="0.2032" layer="94"/>
<wire x1="158.75" y1="171.45" x2="158.75" y2="207.01" width="0.2032" layer="94"/>
<wire x1="158.75" y1="207.01" x2="128.27" y2="207.01" width="0.2032" layer="94"/>
<wire x1="128.27" y1="207.01" x2="128.27" y2="179.07" width="0.2032" layer="94"/>
<wire x1="128.27" y1="179.07" x2="151.13" y2="179.07" width="0.2032" layer="94"/>
<wire x1="151.13" y1="179.07" x2="151.13" y2="199.39" width="0.2032" layer="94"/>
<wire x1="151.13" y1="199.39" x2="135.89" y2="199.39" width="0.2032" layer="94"/>
<wire x1="135.89" y1="199.39" x2="135.89" y2="186.69" width="0.2032" layer="94"/>
<wire x1="135.89" y1="186.69" x2="143.51" y2="186.69" width="0.2032" layer="94"/>
<polygon width="0.2032" layer="94">
<vertex x="180.34" y="160.02"/>
<vertex x="181.61" y="154.94"/>
<vertex x="179.07" y="154.94"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="177.8" y="154.94"/>
<vertex x="176.53" y="160.02"/>
<vertex x="179.07" y="160.02"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="31.75" y="154.94"/>
<vertex x="30.48" y="160.02"/>
<vertex x="33.02" y="160.02"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="27.94" y="160.02"/>
<vertex x="29.21" y="154.94"/>
<vertex x="26.67" y="154.94"/>
</polygon>
<wire x1="109.22" y1="105.41" x2="110.49" y2="104.14" width="0.2032" layer="94"/>
<wire x1="110.49" y1="104.14" x2="180.34" y2="104.14" width="0.2032" layer="94"/>
<wire x1="180.34" y1="104.14" x2="180.34" y2="134.62" width="0.2032" layer="94"/>
<wire x1="180.34" y1="134.62" x2="132.08" y2="134.62" width="0.2032" layer="94"/>
<wire x1="132.08" y1="134.62" x2="132.08" y2="142.24" width="0.2032" layer="94"/>
<wire x1="132.08" y1="142.24" x2="109.22" y2="142.24" width="0.2032" layer="94"/>
<wire x1="109.22" y1="142.24" x2="109.22" y2="111.76" width="0.2032" layer="94"/>
<wire x1="109.22" y1="111.76" x2="175.26" y2="111.76" width="0.2032" layer="94"/>
<wire x1="175.26" y1="111.76" x2="175.26" y2="127" width="0.2032" layer="94"/>
<wire x1="175.26" y1="127" x2="124.46" y2="127" width="0.2032" layer="94"/>
<wire x1="124.46" y1="127" x2="124.46" y2="134.62" width="0.2032" layer="94"/>
<wire x1="124.46" y1="134.62" x2="116.84" y2="134.62" width="0.2032" layer="94"/>
<wire x1="116.84" y1="134.62" x2="116.84" y2="118.11" width="0.2032" layer="94"/>
<wire x1="116.84" y1="118.11" x2="170.18" y2="118.11" width="0.2032" layer="94"/>
<wire x1="170.18" y1="118.11" x2="170.18" y2="120.65" width="0.2032" layer="94"/>
<wire x1="106.68" y1="107.95" x2="177.8" y2="107.95" width="0.2032" layer="94"/>
<wire x1="177.8" y1="107.95" x2="177.8" y2="130.81" width="0.2032" layer="94"/>
<wire x1="177.8" y1="130.81" x2="128.27" y2="130.81" width="0.2032" layer="94"/>
<wire x1="128.27" y1="130.81" x2="128.27" y2="138.43" width="0.2032" layer="94"/>
<wire x1="128.27" y1="138.43" x2="113.03" y2="138.43" width="0.2032" layer="94"/>
<wire x1="113.03" y1="138.43" x2="113.03" y2="115.57" width="0.2032" layer="94"/>
<wire x1="113.03" y1="115.57" x2="172.72" y2="115.57" width="0.2032" layer="94"/>
<wire x1="172.72" y1="115.57" x2="172.72" y2="123.19" width="0.2032" layer="94"/>
<wire x1="172.72" y1="123.19" x2="121.92" y2="123.19" width="0.2032" layer="94"/>
<wire x1="121.92" y1="123.19" x2="121.92" y2="130.81" width="0.2032" layer="94"/>
<wire x1="121.92" y1="130.81" x2="119.38" y2="130.81" width="0.2032" layer="94"/>
<wire x1="119.38" y1="130.81" x2="119.38" y2="120.65" width="0.2032" layer="94"/>
<wire x1="119.38" y1="120.65" x2="170.18" y2="120.65" width="0.2032" layer="94"/>
<dimension x1="109.22" y1="81.28" x2="180.34" y2="81.28" x3="144.78" y3="81.28" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="109.22" y1="77.47" x2="177.8" y2="77.47" x3="143.51" y3="77.47" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="109.22" y1="73.66" x2="175.26" y2="73.66" x3="142.24" y3="73.66" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="113.03" y1="69.85" x2="172.72" y2="69.85" x3="142.875" y3="69.85" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="116.84" y1="66.04" x2="170.18" y2="66.04" x3="143.51" y3="66.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="120.65" y1="62.23" x2="166.37" y2="62.23" x3="143.51" y3="62.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="124.46" y1="58.42" x2="162.56" y2="58.42" x3="143.51" y3="58.42" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="128.27" y1="54.61" x2="158.75" y2="54.61" x3="143.51" y3="54.61" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="132.08" y1="50.8" x2="154.94" y2="50.8" x3="143.51" y3="50.8" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="135.89" y1="46.99" x2="146.05" y2="46.99" x3="140.97" y3="46.99" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="154.94" y1="40.64" x2="146.05" y2="40.64" x3="150.495" y3="40.64" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="158.75" y1="36.83" x2="135.89" y2="36.83" x3="147.32" y3="36.83" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="162.56" y1="33.02" x2="132.08" y2="33.02" x3="147.32" y3="33.02" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="166.37" y1="29.21" x2="128.27" y2="29.21" x3="147.32" y3="29.21" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="170.18" y1="25.4" x2="124.46" y2="25.4" x3="147.32" y3="25.4" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="172.72" y1="22.86" x2="120.65" y2="22.86" x3="146.685" y3="22.86" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="175.26" y1="20.32" x2="116.84" y2="20.32" x3="146.05" y3="20.32" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="177.8" y1="17.78" x2="113.03" y2="17.78" x3="145.415" y3="17.78" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="180.34" y1="15.24" x2="109.22" y2="15.24" x3="144.78" y3="15.24" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="109.22" y1="15.24" x2="109.22" y2="73.66" x3="109.22" y3="44.45" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="113.03" y1="17.78" x2="113.03" y2="69.85" x3="113.03" y3="43.815" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="116.84" y1="20.32" x2="116.84" y2="66.04" x3="116.84" y3="43.18" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="120.65" y1="22.86" x2="120.65" y2="62.23" x3="120.65" y3="42.545" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="124.46" y1="25.4" x2="124.46" y2="58.42" x3="124.46" y3="41.91" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="128.27" y1="29.21" x2="128.27" y2="54.61" x3="128.27" y3="41.91" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="132.08" y1="33.02" x2="132.08" y2="50.8" x3="132.08" y3="41.91" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="135.89" y1="36.83" x2="135.89" y2="46.99" x3="135.89" y3="41.91" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="154.94" y1="50.8" x2="154.94" y2="40.64" x3="154.94" y3="45.72" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="158.75" y1="54.61" x2="158.75" y2="36.83" x3="158.75" y3="45.72" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="162.56" y1="58.42" x2="162.56" y2="33.02" x3="162.56" y3="45.72" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="166.37" y1="62.23" x2="166.37" y2="29.21" x3="166.37" y3="45.72" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="170.18" y1="66.04" x2="170.18" y2="25.4" x3="170.18" y3="45.72" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="172.72" y1="69.85" x2="172.72" y2="22.86" x3="172.72" y3="46.355" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="175.26" y1="73.66" x2="175.26" y2="20.32" x3="175.26" y3="46.99" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="177.8" y1="77.47" x2="177.8" y2="17.78" x3="177.8" y3="47.625" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="180.34" y1="81.28" x2="180.34" y2="15.24" x3="180.34" y3="48.26" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="30.48" y1="76.2" x2="53.34" y2="76.2" x3="41.91" y3="76.2" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="33.02" y1="73.66" x2="50.8" y2="73.66" x3="41.91" y3="73.66" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="35.56" y1="71.12" x2="48.26" y2="71.12" x3="41.91" y3="71.12" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="38.1" y1="68.58" x2="45.72" y2="68.58" x3="41.91" y3="68.58" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="48.26" y1="55.88" x2="40.64" y2="55.88" x3="44.45" y3="55.88" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="38.1" y1="53.34" x2="50.8" y2="53.34" x3="44.45" y3="53.34" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="53.34" y1="50.8" x2="20.32" y2="50.8" x3="36.83" y3="50.8" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="55.88" y1="48.26" x2="17.78" y2="48.26" x3="36.83" y3="48.26" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="58.42" y1="45.72" x2="15.24" y2="45.72" x3="36.83" y3="45.72" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="15.24" y1="45.72" x2="15.24" y2="58.42" x3="15.24" y3="52.07" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="17.78" y1="48.26" x2="17.78" y2="55.88" x3="17.78" y3="52.07" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="15.24" y1="58.42" x2="30.48" y2="58.42" x3="22.86" y3="58.42" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="17.78" y1="55.88" x2="33.02" y2="55.88" x3="25.4" y3="55.88" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="20.32" y1="53.34" x2="35.56" y2="53.34" x3="27.94" y3="53.34" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="30.48" y1="58.42" x2="30.48" y2="76.2" x3="30.48" y3="67.31" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="33.02" y1="55.88" x2="33.02" y2="73.66" x3="33.02" y3="64.77" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="35.56" y1="53.34" x2="35.56" y2="71.12" x3="35.56" y3="62.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="38.1" y1="53.34" x2="38.1" y2="68.58" x3="38.1" y3="60.96" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="40.64" y1="55.88" x2="40.64" y2="66.04" x3="40.64" y3="60.96" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="43.18" y1="58.42" x2="43.18" y2="66.04" x3="43.18" y3="62.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="45.72" y1="68.58" x2="45.72" y2="58.42" x3="45.72" y3="63.5" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="48.26" y1="71.12" x2="48.26" y2="55.88" x3="48.26" y3="63.5" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="50.8" y1="73.66" x2="50.8" y2="53.34" x3="50.8" y3="63.5" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="53.34" y1="76.2" x2="53.34" y2="50.8" x3="53.34" y3="63.5" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="55.88" y1="81.28" x2="55.88" y2="48.26" x3="55.88" y3="64.77" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="58.42" y1="81.28" x2="58.42" y2="45.72" x3="58.42" y3="63.5" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="132.08" y1="142.24" x2="109.22" y2="142.24" x3="120.65" y3="142.24" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="128.27" y1="138.43" x2="113.03" y2="138.43" x3="120.65" y3="138.43" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="180.34" y1="134.62" x2="132.08" y2="134.62" x3="156.21" y3="134.62" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="177.8" y1="130.81" x2="128.27" y2="130.81" x3="153.035" y3="130.81" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="175.26" y1="127" x2="124.46" y2="127" x3="149.86" y3="127" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="172.72" y1="123.19" x2="121.92" y2="123.19" x3="147.32" y3="123.19" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="119.38" y1="120.65" x2="170.18" y2="120.65" x3="144.78" y3="120.65" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="116.84" y1="118.11" x2="170.18" y2="118.11" x3="143.51" y3="118.11" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="113.03" y1="115.57" x2="172.72" y2="115.57" x3="142.875" y3="115.57" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="109.22" y1="111.76" x2="175.26" y2="111.76" x3="142.24" y3="111.76" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="110.49" y1="104.14" x2="180.34" y2="104.14" x3="145.415" y3="104.14" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="106.68" y1="107.95" x2="177.8" y2="107.95" x3="142.24" y3="107.95" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="109.22" y1="142.24" x2="109.22" y2="111.76" x3="109.22" y3="127" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="113.03" y1="138.43" x2="113.03" y2="115.57" x3="113.03" y3="127" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="116.84" y1="134.62" x2="116.84" y2="118.11" x3="116.84" y3="126.365" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="124.46" y1="134.62" x2="116.84" y2="134.62" x3="120.65" y3="134.62" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="119.38" y1="130.81" x2="119.38" y2="120.65" x3="119.38" y3="125.73" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="121.92" y1="123.19" x2="121.92" y2="130.81" x3="121.92" y3="127" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="124.46" y1="127" x2="124.46" y2="134.62" x3="124.46" y3="130.81" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="128.27" y1="130.81" x2="128.27" y2="138.43" x3="128.27" y3="134.62" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="132.08" y1="134.62" x2="132.08" y2="142.24" x3="132.08" y3="138.43" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="172.72" y1="115.57" x2="172.72" y2="123.19" x3="172.72" y3="119.38" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="175.26" y1="111.76" x2="175.26" y2="127" x3="175.26" y3="119.38" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="177.8" y1="107.95" x2="177.8" y2="130.81" x3="177.8" y3="119.38" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="180.34" y1="104.14" x2="180.34" y2="134.62" x3="180.34" y3="119.38" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="78.74" y1="144.78" x2="99.06" y2="144.78" x3="88.9" y3="144.78" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="82.55" y1="140.97" x2="95.25" y2="140.97" x3="88.9" y3="140.97" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="99.06" y1="104.14" x2="91.44" y2="104.14" x3="95.25" y3="104.14" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="66.04" y1="81.28" x2="78.74" y2="81.28" x3="72.39" y3="81.28" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="69.85" y1="77.47" x2="82.55" y2="77.47" x3="76.2" y3="77.47" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="73.66" y1="73.66" x2="85.09" y2="73.66" x3="79.375" y3="73.66" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="104.14" y1="100.33" x2="95.25" y2="100.33" x3="99.695" y3="100.33" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="100.33" y1="15.24" x2="66.04" y2="15.24" x3="83.185" y3="15.24" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="96.52" y1="17.78" x2="69.85" y2="17.78" x3="83.185" y3="17.78" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="92.71" y1="20.32" x2="73.66" y2="20.32" x3="83.185" y3="20.32" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="77.47" y1="22.86" x2="88.9" y2="22.86" x3="83.185" y3="22.86" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="66.04" y1="15.24" x2="66.04" y2="81.28" x3="66.04" y3="48.26" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="69.85" y1="17.78" x2="69.85" y2="77.47" x3="69.85" y3="47.625" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="73.66" y1="20.32" x2="73.66" y2="73.66" x3="73.66" y3="46.99" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="77.47" y1="69.85" x2="77.47" y2="22.86" x3="77.47" y3="46.355" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="81.28" y1="25.4" x2="81.28" y2="69.85" x3="81.28" y3="47.625" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="85.09" y1="73.66" x2="85.09" y2="25.4" x3="85.09" y3="49.53" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="88.9" y1="22.86" x2="88.9" y2="76.2" x3="88.9" y3="49.53" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="92.71" y1="76.2" x2="92.71" y2="20.32" x3="92.71" y3="48.26" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="96.52" y1="76.2" x2="96.52" y2="17.78" x3="96.52" y3="46.99" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="100.33" y1="76.2" x2="100.33" y2="15.24" x3="100.33" y3="45.72" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="78.74" y1="81.28" x2="78.74" y2="144.78" x3="78.74" y3="113.03" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="82.55" y1="77.47" x2="82.55" y2="140.97" x3="82.55" y3="109.22" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="86.36" y1="78.74" x2="86.36" y2="137.16" x3="86.36" y3="107.95" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="91.44" y1="107.95" x2="91.44" y2="137.16" x3="91.44" y3="122.555" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="95.25" y1="140.97" x2="95.25" y2="107.95" x3="95.25" y3="124.46" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="99.06" y1="144.78" x2="99.06" y2="104.14" x3="99.06" y3="124.46" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="91.44" y1="104.14" x2="91.44" y2="77.47" x3="91.44" y3="90.805" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="95.25" y1="100.33" x2="95.25" y2="77.47" x3="95.25" y3="88.9" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="99.06" y1="97.79" x2="99.06" y2="77.47" x3="99.06" y3="87.63" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="27.94" y1="228.6" x2="96.52" y2="228.6" x3="62.23" y3="228.6" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="31.75" y1="226.06" x2="92.71" y2="226.06" x3="62.23" y3="226.06" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="35.56" y1="223.52" x2="88.9" y2="223.52" x3="62.23" y3="223.52" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="39.37" y1="220.98" x2="85.09" y2="220.98" x3="62.23" y3="220.98" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="43.18" y1="218.44" x2="81.28" y2="218.44" x3="62.23" y3="218.44" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="46.99" y1="214.63" x2="77.47" y2="214.63" x3="62.23" y3="214.63" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="50.8" y1="210.82" x2="73.66" y2="210.82" x3="62.23" y3="210.82" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="54.61" y1="207.01" x2="69.85" y2="207.01" x3="62.23" y3="207.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="58.42" y1="203.2" x2="66.04" y2="203.2" x3="62.23" y3="203.2" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="69.85" y1="179.07" x2="60.96" y2="179.07" x3="65.405" y3="179.07" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="73.66" y1="175.26" x2="58.42" y2="175.26" x3="66.04" y3="175.26" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="77.47" y1="171.45" x2="54.61" y2="171.45" x3="66.04" y3="171.45" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="81.28" y1="167.64" x2="50.8" y2="167.64" x3="66.04" y3="167.64" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="85.09" y1="163.83" x2="46.99" y2="163.83" x3="66.04" y3="163.83" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="88.9" y1="160.02" x2="43.18" y2="160.02" x3="66.04" y3="160.02" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="92.71" y1="156.21" x2="39.37" y2="156.21" x3="66.04" y3="156.21" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="96.52" y1="152.4" x2="35.56" y2="152.4" x3="66.04" y3="152.4" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="27.94" y1="152.4" x2="27.94" y2="228.6" x3="27.94" y3="190.5" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="31.75" y1="152.4" x2="31.75" y2="226.06" x3="31.75" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="35.56" y1="152.4" x2="35.56" y2="223.52" x3="35.56" y3="187.96" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="39.37" y1="156.21" x2="39.37" y2="220.98" x3="39.37" y3="188.595" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="43.18" y1="160.02" x2="43.18" y2="218.44" x3="43.18" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="46.99" y1="163.83" x2="46.99" y2="214.63" x3="46.99" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="50.8" y1="167.64" x2="50.8" y2="210.82" x3="50.8" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="54.61" y1="171.45" x2="54.61" y2="207.01" x3="54.61" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="58.42" y1="175.26" x2="58.42" y2="203.2" x3="58.42" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="60.96" y1="179.07" x2="60.96" y2="199.39" x3="60.96" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="63.5" y1="199.39" x2="63.5" y2="182.88" x3="63.5" y3="191.135" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="66.04" y1="203.2" x2="66.04" y2="182.88" x3="66.04" y3="193.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="69.85" y1="207.01" x2="69.85" y2="179.07" x3="69.85" y3="193.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="73.66" y1="210.82" x2="73.66" y2="175.26" x3="73.66" y3="193.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="77.47" y1="214.63" x2="77.47" y2="171.45" x3="77.47" y3="193.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="81.28" y1="218.44" x2="81.28" y2="167.64" x3="81.28" y3="193.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="85.09" y1="220.98" x2="85.09" y2="163.83" x3="85.09" y3="192.405" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="88.9" y1="223.52" x2="88.9" y2="160.02" x3="88.9" y3="191.77" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="92.71" y1="226.06" x2="92.71" y2="156.21" x3="92.71" y3="191.135" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="96.52" y1="228.6" x2="96.52" y2="152.4" x3="96.52" y3="190.5" textsize="1.778" layer="98" unit="inch"/>
<text x="132.08" y="233.68" size="1.778" layer="97">75.0m pipe
9.7m header</text>
<dimension x1="180.34" y1="152.4" x2="180.34" y2="228.6" x3="180.34" y3="190.5" textsize="1.778" layer="98" unit="inch"/>
<wire x1="139.7" y1="195.58" x2="139.7" y2="190.5" width="0.2032" layer="94"/>
<wire x1="139.7" y1="190.5" x2="143.51" y2="190.5" width="0.2032" layer="94"/>
<wire x1="143.51" y1="190.5" x2="143.51" y2="186.69" width="0.2032" layer="94"/>
<dimension x1="177.8" y1="152.4" x2="177.8" y2="226.06" x3="177.8" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="175.26" y1="152.4" x2="175.26" y2="223.52" x3="175.26" y3="187.96" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="172.72" y1="156.21" x2="172.72" y2="220.98" x3="172.72" y3="188.595" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="170.18" y1="160.02" x2="170.18" y2="218.44" x3="170.18" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="166.37" y1="163.83" x2="166.37" y2="214.63" x3="166.37" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="162.56" y1="167.64" x2="162.56" y2="210.82" x3="162.56" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="158.75" y1="171.45" x2="158.75" y2="207.01" x3="158.75" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="154.94" y1="175.26" x2="154.94" y2="203.2" x3="154.94" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="151.13" y1="179.07" x2="151.13" y2="199.39" x3="151.13" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="147.32" y1="182.88" x2="147.32" y2="195.58" x3="147.32" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="135.89" y1="199.39" x2="135.89" y2="186.69" x3="135.89" y3="193.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="132.08" y1="203.2" x2="132.08" y2="182.88" x3="132.08" y3="193.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="128.27" y1="207.01" x2="128.27" y2="179.07" x3="128.27" y3="193.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="124.46" y1="210.82" x2="124.46" y2="175.26" x3="124.46" y3="193.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="120.65" y1="214.63" x2="120.65" y2="171.45" x3="120.65" y3="193.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="116.84" y1="218.44" x2="116.84" y2="167.64" x3="116.84" y3="193.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="113.03" y1="220.98" x2="113.03" y2="163.83" x3="113.03" y3="192.405" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="109.22" y1="223.52" x2="109.22" y2="160.02" x3="109.22" y3="191.77" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="105.41" y1="226.06" x2="105.41" y2="156.21" x3="105.41" y3="191.135" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="101.6" y1="228.6" x2="101.6" y2="152.4" x3="101.6" y3="190.5" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="180.34" y1="228.6" x2="101.6" y2="228.6" x3="140.97" y3="228.6" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="177.8" y1="226.06" x2="105.41" y2="226.06" x3="141.605" y3="226.06" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="175.26" y1="223.52" x2="109.22" y2="223.52" x3="142.24" y3="223.52" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="172.72" y1="220.98" x2="113.03" y2="220.98" x3="142.875" y3="220.98" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="170.18" y1="218.44" x2="116.84" y2="218.44" x3="143.51" y3="218.44" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="166.37" y1="214.63" x2="120.65" y2="214.63" x3="143.51" y3="214.63" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="162.56" y1="210.82" x2="124.46" y2="210.82" x3="143.51" y3="210.82" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="158.75" y1="207.01" x2="128.27" y2="207.01" x3="143.51" y3="207.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="154.94" y1="203.2" x2="132.08" y2="203.2" x3="143.51" y3="203.2" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="151.13" y1="199.39" x2="135.89" y2="199.39" x3="143.51" y3="199.39" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="147.32" y1="195.58" x2="139.7" y2="195.58" x3="143.51" y3="195.58" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="135.89" y1="186.69" x2="143.51" y2="186.69" x3="139.7" y3="186.69" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="132.08" y1="182.88" x2="147.32" y2="182.88" x3="139.7" y3="182.88" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="128.27" y1="179.07" x2="151.13" y2="179.07" x3="139.7" y3="179.07" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="124.46" y1="175.26" x2="154.94" y2="175.26" x3="139.7" y3="175.26" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="120.65" y1="171.45" x2="158.75" y2="171.45" x3="139.7" y3="171.45" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="116.84" y1="167.64" x2="162.56" y2="167.64" x3="139.7" y3="167.64" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="113.03" y1="163.83" x2="166.37" y2="163.83" x3="139.7" y3="163.83" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="109.22" y1="160.02" x2="170.18" y2="160.02" x3="139.7" y3="160.02" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="105.41" y1="156.21" x2="172.72" y2="156.21" x3="139.065" y3="156.21" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="101.6" y1="152.4" x2="175.26" y2="152.4" x3="138.43" y3="152.4" textsize="1.778" layer="98" unit="inch"/>
</plain>
<instances>
</instances>
<busses>
<bus name="B$1">
<segment>
<wire x1="104.14" y1="90.17" x2="101.6" y2="90.17" width="0.762" layer="92" style="shortdash"/>
<wire x1="101.6" y1="90.17" x2="101.6" y2="81.28" width="0.762" layer="92"/>
<wire x1="101.6" y1="81.28" x2="109.22" y2="81.28" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="B$3">
<segment>
<wire x1="104.14" y1="107.95" x2="101.6" y2="107.95" width="0.762" layer="92"/>
<wire x1="101.6" y1="107.95" x2="101.6" y2="147.32" width="0.762" layer="92"/>
<wire x1="101.6" y1="147.32" x2="99.06" y2="149.86" width="0.762" layer="92"/>
<wire x1="101.6" y1="147.32" x2="104.14" y2="149.86" width="0.762" layer="92"/>
<wire x1="99.06" y1="149.86" x2="27.94" y2="149.86" width="0.762" layer="92"/>
<wire x1="27.94" y1="149.86" x2="27.94" y2="152.4" width="0.762" layer="92"/>
<wire x1="104.14" y1="149.86" x2="180.34" y2="149.86" width="0.762" layer="92"/>
<wire x1="180.34" y1="149.86" x2="180.34" y2="152.4" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="B$4">
<segment>
<wire x1="104.14" y1="92.71" x2="101.6" y2="92.71" width="0.762" layer="92" style="shortdash"/>
<wire x1="101.6" y1="92.71" x2="101.6" y2="81.28" width="0.762" layer="92" style="shortdash"/>
<wire x1="101.6" y1="81.28" x2="63.5" y2="81.28" width="0.762" layer="92" style="shortdash"/>
<wire x1="63.5" y1="81.28" x2="58.42" y2="81.28" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<wire x1="101.6" y1="43.18" x2="104.14" y2="43.18" width="0.1524" layer="91" style="shortdash"/>
<wire x1="104.14" y1="43.18" x2="104.14" y2="12.7" width="0.1524" layer="91" style="shortdash"/>
<wire x1="104.14" y1="12.7" x2="101.6" y2="12.7" width="0.1524" layer="91" style="shortdash"/>
<wire x1="101.6" y1="43.18" x2="101.6" y2="12.7" width="0.1524" layer="91" style="shortdash"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="100.33" y1="93.98" x2="104.14" y2="93.98" width="0.1524" layer="91" style="dashdot"/>
<wire x1="104.14" y1="93.98" x2="104.14" y2="91.44" width="0.1524" layer="91" style="dashdot"/>
<wire x1="104.14" y1="91.44" x2="102.87" y2="91.44" width="0.1524" layer="91" style="dashdot"/>
<wire x1="102.87" y1="91.44" x2="102.87" y2="80.01" width="0.1524" layer="91" style="dashdot"/>
<wire x1="102.87" y1="80.01" x2="63.5" y2="80.01" width="0.1524" layer="91" style="dashdot"/>
<wire x1="63.5" y1="82.55" x2="100.33" y2="82.55" width="0.1524" layer="91" style="dashdot"/>
<wire x1="100.33" y1="82.55" x2="100.33" y2="93.98" width="0.1524" layer="91" style="dashdot"/>
<wire x1="63.5" y1="80.01" x2="63.5" y2="82.55" width="0.1524" layer="91" style="dashdot"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="106.68" y1="104.14" x2="182.88" y2="104.14" width="0.1524" layer="91" style="shortdash"/>
<wire x1="182.88" y1="104.14" x2="182.88" y2="88.9" width="0.1524" layer="91" style="shortdash"/>
<wire x1="182.88" y1="88.9" x2="106.68" y2="88.9" width="0.1524" layer="91" style="shortdash"/>
<wire x1="106.68" y1="88.9" x2="106.68" y2="104.14" width="0.1524" layer="91" style="shortdash"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="182.88" y1="144.78" x2="182.88" y2="134.62" width="0.1524" layer="91" style="shortdash"/>
<wire x1="182.88" y1="134.62" x2="132.08" y2="134.62" width="0.1524" layer="91" style="shortdash"/>
<wire x1="132.08" y1="134.62" x2="132.08" y2="144.78" width="0.1524" layer="91" style="shortdash"/>
<wire x1="132.08" y1="144.78" x2="182.88" y2="144.78" width="0.1524" layer="91" style="shortdash"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="12.7" y1="76.2" x2="20.32" y2="76.2" width="0.1524" layer="91" style="shortdash"/>
<wire x1="27.94" y1="76.2" x2="35.56" y2="76.2" width="0.1524" layer="91" style="shortdash"/>
<wire x1="35.56" y1="76.2" x2="35.56" y2="83.82" width="0.1524" layer="91" style="shortdash"/>
<wire x1="35.56" y1="83.82" x2="12.7" y2="83.82" width="0.1524" layer="91" style="shortdash"/>
<wire x1="12.7" y1="83.82" x2="12.7" y2="76.2" width="0.1524" layer="91" style="shortdash"/>
<wire x1="20.32" y1="76.2" x2="20.32" y2="60.96" width="0.1524" layer="91" style="shortdash"/>
<wire x1="20.32" y1="60.96" x2="27.94" y2="60.96" width="0.1524" layer="91" style="shortdash"/>
<wire x1="27.94" y1="60.96" x2="27.94" y2="76.2" width="0.1524" layer="91" style="shortdash"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="12.7" y1="43.18" x2="35.56" y2="43.18" width="0.1524" layer="91" style="shortdash"/>
<wire x1="35.56" y1="43.18" x2="35.56" y2="12.7" width="0.1524" layer="91" style="shortdash"/>
<wire x1="35.56" y1="12.7" x2="12.7" y2="12.7" width="0.1524" layer="91" style="shortdash"/>
<wire x1="12.7" y1="12.7" x2="12.7" y2="43.18" width="0.1524" layer="91" style="shortdash"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="25.4" y1="231.14" x2="25.4" y2="147.32" width="0.1524" layer="91" style="shortdash"/>
<wire x1="25.4" y1="147.32" x2="12.7" y2="147.32" width="0.1524" layer="91" style="shortdash"/>
<wire x1="12.7" y1="147.32" x2="12.7" y2="231.14" width="0.1524" layer="91" style="shortdash"/>
<wire x1="12.7" y1="231.14" x2="25.4" y2="231.14" width="0.1524" layer="91" style="shortdash"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<wire x1="104.14" y1="106.68" x2="104.14" y2="109.22" width="0.1524" layer="91" style="dashdot"/>
<wire x1="104.14" y1="109.22" x2="102.87" y2="109.22" width="0.1524" layer="91" style="dashdot"/>
<wire x1="102.87" y1="109.22" x2="102.87" y2="147.32" width="0.1524" layer="91" style="dashdot"/>
<wire x1="102.87" y1="147.32" x2="100.33" y2="147.32" width="0.1524" layer="91" style="dashdot"/>
<wire x1="100.33" y1="147.32" x2="100.33" y2="106.68" width="0.1524" layer="91" style="dashdot"/>
<wire x1="100.33" y1="106.68" x2="104.14" y2="106.68" width="0.1524" layer="91" style="dashdot"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<description>&lt;b&gt;First Floor&lt;/b&gt;
&lt;p&gt;&lt;i&gt;CLASSIFICATION: TOP SECRET, NEED-TO-KNOW ONLY&lt;/i&gt;&lt;/p&gt;
&lt;p&gt;This is the in-plane UFH pipe layout for the first floor.&lt;/p&gt;</description>
<plain>
<wire x1="68.58" y1="106.68" x2="132.08" y2="106.68" width="0.2032" layer="97"/>
<wire x1="132.08" y1="106.68" x2="132.08" y2="157.48" width="0.2032" layer="97"/>
<wire x1="132.08" y1="157.48" x2="68.58" y2="157.48" width="0.2032" layer="97"/>
<wire x1="134.62" y1="106.68" x2="182.88" y2="106.68" width="0.2032" layer="97"/>
<wire x1="182.88" y1="106.68" x2="182.88" y2="157.48" width="0.2032" layer="97"/>
<wire x1="182.88" y1="157.48" x2="134.62" y2="157.48" width="0.2032" layer="97"/>
<wire x1="134.62" y1="157.48" x2="134.62" y2="106.68" width="0.2032" layer="97"/>
<wire x1="182.88" y1="160.02" x2="182.88" y2="248.92" width="0.2032" layer="97"/>
<wire x1="182.88" y1="248.92" x2="104.14" y2="248.92" width="0.2032" layer="97"/>
<wire x1="104.14" y1="248.92" x2="104.14" y2="160.02" width="0.2032" layer="97"/>
<wire x1="104.14" y1="160.02" x2="182.88" y2="160.02" width="0.2032" layer="97"/>
<dimension x1="182.88" y1="106.68" x2="182.88" y2="157.48" x3="193.04" y3="132.08" textsize="1.778" layer="97" unit="inch"/>
<dimension x1="182.88" y1="160.02" x2="182.88" y2="248.92" x3="193.04" y3="204.47" textsize="1.778" layer="97" unit="inch"/>
<dimension x1="182.88" y1="248.92" x2="104.14" y2="248.92" x3="143.51" y3="259.08" textsize="1.778" layer="97" unit="inch"/>
<wire x1="101.6" y1="165.1" x2="12.7" y2="165.1" width="0.2032" layer="97"/>
<wire x1="12.7" y1="165.1" x2="12.7" y2="248.92" width="0.2032" layer="97"/>
<wire x1="12.7" y1="248.92" x2="101.6" y2="248.92" width="0.2032" layer="97"/>
<wire x1="101.6" y1="248.92" x2="101.6" y2="165.1" width="0.2032" layer="97"/>
<dimension x1="12.7" y1="248.92" x2="101.6" y2="248.92" x3="57.15" y3="259.08" textsize="1.778" layer="97" unit="inch"/>
<dimension x1="12.7" y1="165.1" x2="12.7" y2="248.92" x3="2.54" y3="207.01" textsize="1.778" layer="97" unit="inch"/>
<wire x1="12.7" y1="99.06" x2="55.88" y2="99.06" width="0.2032" layer="97"/>
<wire x1="55.88" y1="99.06" x2="55.88" y2="27.94" width="0.2032" layer="97"/>
<wire x1="55.88" y1="27.94" x2="12.7" y2="27.94" width="0.2032" layer="97"/>
<wire x1="12.7" y1="27.94" x2="12.7" y2="99.06" width="0.2032" layer="97"/>
<dimension x1="12.7" y1="27.94" x2="12.7" y2="99.06" x3="2.54" y3="63.5" textsize="1.778" layer="97" unit="inch"/>
<dimension x1="55.88" y1="27.94" x2="12.7" y2="27.94" x3="34.29" y3="2.54" textsize="1.778" layer="97" unit="inch"/>
<wire x1="58.42" y1="99.06" x2="182.88" y2="99.06" width="0.2032" layer="97"/>
<wire x1="182.88" y1="99.06" x2="182.88" y2="27.94" width="0.2032" layer="97"/>
<wire x1="182.88" y1="27.94" x2="165.1" y2="27.94" width="0.2032" layer="97"/>
<wire x1="76.2" y1="27.94" x2="58.42" y2="27.94" width="0.2032" layer="97"/>
<wire x1="58.42" y1="27.94" x2="58.42" y2="99.06" width="0.2032" layer="97"/>
<dimension x1="182.88" y1="99.06" x2="182.88" y2="27.94" x3="193.04" y3="63.5" textsize="1.778" layer="97" unit="inch"/>
<wire x1="165.1" y1="27.94" x2="165.1" y2="12.7" width="0.2032" layer="97"/>
<wire x1="165.1" y1="12.7" x2="76.2" y2="12.7" width="0.2032" layer="97"/>
<wire x1="76.2" y1="12.7" x2="76.2" y2="27.94" width="0.2032" layer="97"/>
<dimension x1="165.1" y1="27.94" x2="165.1" y2="12.7" x3="193.04" y3="20.32" textsize="1.778" layer="97" unit="inch"/>
<dimension x1="182.88" y1="27.94" x2="165.1" y2="27.94" x3="173.99" y3="2.54" textsize="1.778" layer="97" unit="inch"/>
<dimension x1="76.2" y1="27.94" x2="58.42" y2="27.94" x3="67.31" y3="2.54" textsize="1.778" layer="97" unit="inch"/>
<dimension x1="165.1" y1="12.7" x2="76.2" y2="12.7" x3="120.65" y3="2.54" textsize="1.778" layer="97" unit="inch"/>
<rectangle x1="132.08" y1="111.76" x2="134.62" y2="132.08" layer="97"/>
<text x="172.72" y="109.22" size="1.778" layer="97" rot="R90">Toilet area</text>
<text x="137.16" y="116.84" size="1.778" layer="97">Shower area</text>
<text x="25.4" y="38.1" size="1.778" layer="97">Bathtub area</text>
<text x="25.4" y="78.74" size="1.778" layer="97" rot="R90">Toilet area</text>
<text x="45.72" y="83.82" size="1.778" layer="97" rot="R90">Bidet area</text>
<wire x1="134.62" y1="130.81" x2="135.89" y2="130.81" width="0.2032" layer="94"/>
<wire x1="134.62" y1="128.27" x2="137.16" y2="128.27" width="0.2032" layer="94"/>
<wire x1="106.68" y1="170.18" x2="106.68" y2="246.38" width="0.2032" layer="94"/>
<wire x1="106.68" y1="246.38" x2="180.34" y2="246.38" width="0.2032" layer="94"/>
<wire x1="180.34" y1="246.38" x2="180.34" y2="170.18" width="0.2032" layer="94"/>
<wire x1="180.34" y1="170.18" x2="114.3" y2="170.18" width="0.2032" layer="94"/>
<wire x1="114.3" y1="170.18" x2="114.3" y2="241.3" width="0.2032" layer="94"/>
<wire x1="114.3" y1="241.3" x2="175.26" y2="241.3" width="0.2032" layer="94"/>
<wire x1="175.26" y1="241.3" x2="175.26" y2="177.8" width="0.2032" layer="94"/>
<wire x1="175.26" y1="177.8" x2="121.92" y2="177.8" width="0.2032" layer="94"/>
<wire x1="121.92" y1="177.8" x2="121.92" y2="236.22" width="0.2032" layer="94"/>
<wire x1="121.92" y1="236.22" x2="170.18" y2="236.22" width="0.2032" layer="94"/>
<wire x1="170.18" y1="236.22" x2="170.18" y2="185.42" width="0.2032" layer="94"/>
<wire x1="170.18" y1="185.42" x2="129.54" y2="185.42" width="0.2032" layer="94"/>
<wire x1="129.54" y1="185.42" x2="129.54" y2="228.6" width="0.2032" layer="94"/>
<wire x1="129.54" y1="228.6" x2="162.56" y2="228.6" width="0.2032" layer="94"/>
<wire x1="162.56" y1="228.6" x2="162.56" y2="193.04" width="0.2032" layer="94"/>
<wire x1="162.56" y1="193.04" x2="137.16" y2="193.04" width="0.2032" layer="94"/>
<wire x1="137.16" y1="193.04" x2="137.16" y2="220.98" width="0.2032" layer="94"/>
<wire x1="158.75" y1="224.79" x2="133.35" y2="224.79" width="0.2032" layer="94"/>
<wire x1="110.49" y1="170.18" x2="110.49" y2="243.84" width="0.2032" layer="94"/>
<wire x1="110.49" y1="243.84" x2="177.8" y2="243.84" width="0.2032" layer="94"/>
<wire x1="177.8" y1="243.84" x2="177.8" y2="173.99" width="0.2032" layer="94"/>
<wire x1="177.8" y1="173.99" x2="118.11" y2="173.99" width="0.2032" layer="94"/>
<wire x1="118.11" y1="173.99" x2="118.11" y2="238.76" width="0.2032" layer="94"/>
<wire x1="118.11" y1="238.76" x2="172.72" y2="238.76" width="0.2032" layer="94"/>
<wire x1="172.72" y1="238.76" x2="172.72" y2="181.61" width="0.2032" layer="94"/>
<wire x1="172.72" y1="181.61" x2="125.73" y2="181.61" width="0.2032" layer="94"/>
<wire x1="125.73" y1="181.61" x2="125.73" y2="232.41" width="0.2032" layer="94"/>
<wire x1="125.73" y1="232.41" x2="166.37" y2="232.41" width="0.2032" layer="94"/>
<wire x1="166.37" y1="232.41" x2="166.37" y2="189.23" width="0.2032" layer="94"/>
<wire x1="166.37" y1="189.23" x2="133.35" y2="189.23" width="0.2032" layer="94"/>
<wire x1="133.35" y1="189.23" x2="133.35" y2="224.79" width="0.2032" layer="94"/>
<text x="185.42" y="139.7" size="1.778" layer="97" rot="R270">19.6m pipe
no header</text>
<text x="10.16" y="58.42" size="1.778" layer="97" rot="R90">21.5m pipe
6.82m header</text>
<text x="144.78" y="165.1" size="1.778" layer="97">Wardrobe/Bookshelf area</text>
<text x="15.24" y="170.18" size="1.778" layer="97">Wardrobe/Bookshelf area</text>
<text x="185.42" y="213.36" size="1.778" layer="97" rot="R270">68.9m pipe
4.4m header</text>
<text x="10.16" y="203.2" size="1.778" layer="97" rot="R90">74.7m pipe
4.82m header</text>
<text x="137.16" y="10.16" size="1.778" layer="97" rot="R180">51.05m / 53.95m pipe
6.02m / 5.32m header</text>
<wire x1="106.68" y1="170.18" x2="110.49" y2="170.18" width="0.2032" layer="94"/>
<text x="2.54" y="111.76" size="1.778" layer="97">0 m</text>
<text x="27.94" y="111.76" size="1.778" layer="97">1 m</text>
<text x="53.34" y="111.76" size="1.778" layer="97">2 m</text>
<text x="66.04" y="111.76" size="1.778" layer="97">2.5 m</text>
<wire x1="2.54" y1="106.68" x2="15.24" y2="106.68" width="0.2032" layer="97"/>
<wire x1="15.24" y1="106.68" x2="15.24" y2="104.14" width="0.2032" layer="97"/>
<wire x1="15.24" y1="104.14" x2="2.54" y2="104.14" width="0.2032" layer="97"/>
<wire x1="2.54" y1="104.14" x2="2.54" y2="106.68" width="0.2032" layer="97"/>
<wire x1="27.94" y1="106.68" x2="33.02" y2="106.68" width="0.2032" layer="97"/>
<wire x1="33.02" y1="106.68" x2="33.02" y2="104.14" width="0.2032" layer="97"/>
<wire x1="33.02" y1="104.14" x2="27.94" y2="104.14" width="0.2032" layer="97"/>
<wire x1="27.94" y1="104.14" x2="27.94" y2="106.68" width="0.2032" layer="97"/>
<wire x1="38.1" y1="106.68" x2="38.1" y2="104.14" width="0.2032" layer="97"/>
<wire x1="38.1" y1="104.14" x2="43.18" y2="104.14" width="0.2032" layer="97"/>
<wire x1="43.18" y1="104.14" x2="43.18" y2="106.68" width="0.2032" layer="97"/>
<wire x1="43.18" y1="106.68" x2="38.1" y2="106.68" width="0.2032" layer="97"/>
<wire x1="48.26" y1="106.68" x2="48.26" y2="104.14" width="0.2032" layer="97"/>
<wire x1="48.26" y1="104.14" x2="53.34" y2="104.14" width="0.2032" layer="97"/>
<wire x1="53.34" y1="104.14" x2="53.34" y2="106.68" width="0.2032" layer="97"/>
<wire x1="53.34" y1="106.68" x2="48.26" y2="106.68" width="0.2032" layer="97"/>
<rectangle x1="15.24" y1="104.14" x2="27.94" y2="106.68" layer="97"/>
<rectangle x1="33.02" y1="104.14" x2="38.1" y2="106.68" layer="97"/>
<rectangle x1="43.18" y1="104.14" x2="48.26" y2="106.68" layer="97"/>
<rectangle x1="53.34" y1="104.14" x2="55.88" y2="106.68" layer="97"/>
<rectangle x1="58.42" y1="104.14" x2="60.96" y2="106.68" layer="97"/>
<rectangle x1="63.5" y1="104.14" x2="66.04" y2="106.68" layer="97"/>
<wire x1="55.88" y1="106.68" x2="58.42" y2="106.68" width="0.2032" layer="97"/>
<wire x1="58.42" y1="106.68" x2="58.42" y2="104.14" width="0.2032" layer="97"/>
<wire x1="58.42" y1="104.14" x2="55.88" y2="104.14" width="0.2032" layer="97"/>
<wire x1="55.88" y1="104.14" x2="55.88" y2="106.68" width="0.2032" layer="97"/>
<wire x1="60.96" y1="106.68" x2="63.5" y2="106.68" width="0.2032" layer="97"/>
<wire x1="63.5" y1="106.68" x2="63.5" y2="104.14" width="0.2032" layer="97"/>
<wire x1="63.5" y1="104.14" x2="60.96" y2="104.14" width="0.2032" layer="97"/>
<wire x1="60.96" y1="104.14" x2="60.96" y2="106.68" width="0.2032" layer="97"/>
<wire x1="2.54" y1="106.68" x2="2.54" y2="111.76" width="0.2032" layer="97"/>
<wire x1="27.94" y1="106.68" x2="27.94" y2="111.76" width="0.2032" layer="97"/>
<wire x1="33.02" y1="106.68" x2="33.02" y2="109.22" width="0.2032" layer="97"/>
<wire x1="38.1" y1="106.68" x2="38.1" y2="109.22" width="0.2032" layer="97"/>
<wire x1="43.18" y1="106.68" x2="43.18" y2="109.22" width="0.2032" layer="97"/>
<wire x1="48.26" y1="106.68" x2="48.26" y2="109.22" width="0.2032" layer="97"/>
<wire x1="53.34" y1="106.68" x2="53.34" y2="111.76" width="0.2032" layer="97"/>
<wire x1="15.24" y1="106.68" x2="15.24" y2="109.22" width="0.2032" layer="97"/>
<wire x1="66.04" y1="106.68" x2="66.04" y2="111.76" width="0.2032" layer="97"/>
<polygon width="0.2032" layer="94">
<vertex x="106.68" y="177.8"/>
<vertex x="107.95" y="172.72"/>
<vertex x="105.41" y="172.72"/>
</polygon>
<wire x1="137.16" y1="128.27" x2="140.97" y2="132.08" width="0.2032" layer="94"/>
<wire x1="135.89" y1="130.81" x2="139.7" y2="134.62" width="0.2032" layer="94"/>
<wire x1="140.97" y1="132.08" x2="160.02" y2="132.08" width="0.2032" layer="94"/>
<wire x1="160.02" y1="132.08" x2="160.02" y2="114.3" width="0.2032" layer="94"/>
<wire x1="160.02" y1="114.3" x2="165.1" y2="114.3" width="0.2032" layer="94"/>
<wire x1="165.1" y1="114.3" x2="165.1" y2="132.08" width="0.2032" layer="94"/>
<wire x1="165.1" y1="132.08" x2="180.34" y2="132.08" width="0.2032" layer="94"/>
<wire x1="180.34" y1="132.08" x2="180.34" y2="154.94" width="0.2032" layer="94"/>
<wire x1="180.34" y1="154.94" x2="137.16" y2="154.94" width="0.2032" layer="94"/>
<wire x1="137.16" y1="154.94" x2="137.16" y2="137.16" width="0.2032" layer="94"/>
<wire x1="137.16" y1="137.16" x2="175.26" y2="137.16" width="0.2032" layer="94"/>
<wire x1="175.26" y1="137.16" x2="175.26" y2="149.86" width="0.2032" layer="94"/>
<wire x1="175.26" y1="149.86" x2="142.24" y2="149.86" width="0.2032" layer="94"/>
<wire x1="142.24" y1="149.86" x2="142.24" y2="142.24" width="0.2032" layer="94"/>
<wire x1="142.24" y1="142.24" x2="170.18" y2="142.24" width="0.2032" layer="94"/>
<wire x1="170.18" y1="142.24" x2="170.18" y2="144.78" width="0.2032" layer="94"/>
<wire x1="170.18" y1="144.78" x2="144.78" y2="144.78" width="0.2032" layer="94"/>
<wire x1="139.7" y1="134.62" x2="177.8" y2="134.62" width="0.2032" layer="94"/>
<wire x1="177.8" y1="134.62" x2="177.8" y2="152.4" width="0.2032" layer="94"/>
<wire x1="177.8" y1="152.4" x2="139.7" y2="152.4" width="0.2032" layer="94"/>
<wire x1="139.7" y1="152.4" x2="139.7" y2="139.7" width="0.2032" layer="94"/>
<wire x1="139.7" y1="139.7" x2="172.72" y2="139.7" width="0.2032" layer="94"/>
<wire x1="172.72" y1="139.7" x2="172.72" y2="147.32" width="0.2032" layer="94"/>
<wire x1="172.72" y1="147.32" x2="144.78" y2="147.32" width="0.2032" layer="94"/>
<wire x1="144.78" y1="147.32" x2="144.78" y2="144.78" width="0.2032" layer="94"/>
<polygon width="0.2032" layer="94">
<vertex x="147.32" y="132.08"/>
<vertex x="142.24" y="130.81"/>
<vertex x="142.24" y="133.35"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="142.24" y="134.62"/>
<vertex x="147.32" y="135.89"/>
<vertex x="147.32" y="133.35"/>
</polygon>
<wire x1="53.34" y1="96.52" x2="53.34" y2="50.8" width="0.2032" layer="94"/>
<wire x1="53.34" y1="50.8" x2="15.24" y2="50.8" width="0.2032" layer="94"/>
<wire x1="15.24" y1="50.8" x2="15.24" y2="73.66" width="0.2032" layer="94"/>
<wire x1="15.24" y1="73.66" x2="30.48" y2="73.66" width="0.2032" layer="94"/>
<wire x1="30.48" y1="73.66" x2="30.48" y2="91.44" width="0.2032" layer="94"/>
<wire x1="30.48" y1="91.44" x2="38.1" y2="91.44" width="0.2032" layer="94"/>
<wire x1="38.1" y1="91.44" x2="38.1" y2="83.82" width="0.2032" layer="94"/>
<wire x1="38.1" y1="83.82" x2="48.26" y2="83.82" width="0.2032" layer="94"/>
<wire x1="48.26" y1="83.82" x2="48.26" y2="55.88" width="0.2032" layer="94"/>
<wire x1="48.26" y1="55.88" x2="20.32" y2="55.88" width="0.2032" layer="94"/>
<wire x1="20.32" y1="55.88" x2="20.32" y2="68.58" width="0.2032" layer="94"/>
<wire x1="20.32" y1="68.58" x2="35.56" y2="68.58" width="0.2032" layer="94"/>
<wire x1="35.56" y1="68.58" x2="35.56" y2="78.74" width="0.2032" layer="94"/>
<wire x1="35.56" y1="78.74" x2="43.18" y2="78.74" width="0.2032" layer="94"/>
<wire x1="43.18" y1="78.74" x2="43.18" y2="60.96" width="0.2032" layer="94"/>
<wire x1="43.18" y1="60.96" x2="25.4" y2="60.96" width="0.2032" layer="94"/>
<wire x1="25.4" y1="60.96" x2="25.4" y2="63.5" width="0.2032" layer="94"/>
<wire x1="25.4" y1="63.5" x2="40.64" y2="63.5" width="0.2032" layer="94"/>
<wire x1="53.34" y1="96.52" x2="50.8" y2="93.98" width="0.2032" layer="94"/>
<wire x1="50.8" y1="93.98" x2="50.8" y2="53.34" width="0.2032" layer="94"/>
<wire x1="50.8" y1="53.34" x2="17.78" y2="53.34" width="0.2032" layer="94"/>
<wire x1="17.78" y1="53.34" x2="17.78" y2="71.12" width="0.2032" layer="94"/>
<wire x1="17.78" y1="71.12" x2="33.02" y2="71.12" width="0.2032" layer="94"/>
<wire x1="33.02" y1="71.12" x2="33.02" y2="88.9" width="0.2032" layer="94"/>
<wire x1="33.02" y1="88.9" x2="35.56" y2="88.9" width="0.2032" layer="94"/>
<wire x1="35.56" y1="88.9" x2="35.56" y2="81.28" width="0.2032" layer="94"/>
<wire x1="35.56" y1="81.28" x2="45.72" y2="81.28" width="0.2032" layer="94"/>
<wire x1="45.72" y1="81.28" x2="45.72" y2="58.42" width="0.2032" layer="94"/>
<wire x1="45.72" y1="58.42" x2="22.86" y2="58.42" width="0.2032" layer="94"/>
<wire x1="22.86" y1="58.42" x2="22.86" y2="66.04" width="0.2032" layer="94"/>
<wire x1="22.86" y1="66.04" x2="38.1" y2="66.04" width="0.2032" layer="94"/>
<wire x1="38.1" y1="66.04" x2="38.1" y2="76.2" width="0.2032" layer="94"/>
<wire x1="38.1" y1="76.2" x2="40.64" y2="76.2" width="0.2032" layer="94"/>
<wire x1="40.64" y1="76.2" x2="40.64" y2="63.5" width="0.2032" layer="94"/>
<polygon width="0.2032" layer="94">
<vertex x="53.34" y="88.9"/>
<vertex x="52.07" y="93.98"/>
<vertex x="54.61" y="93.98"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="50.8" y="91.44"/>
<vertex x="52.07" y="86.36"/>
<vertex x="49.53" y="86.36"/>
</polygon>
<wire x1="99.06" y1="170.18" x2="99.06" y2="246.38" width="0.2032" layer="94"/>
<wire x1="99.06" y1="246.38" x2="15.24" y2="246.38" width="0.2032" layer="94"/>
<wire x1="15.24" y1="246.38" x2="15.24" y2="175.26" width="0.2032" layer="94"/>
<wire x1="15.24" y1="175.26" x2="91.44" y2="175.26" width="0.2032" layer="94"/>
<wire x1="91.44" y1="175.26" x2="91.44" y2="241.3" width="0.2032" layer="94"/>
<wire x1="91.44" y1="241.3" x2="20.32" y2="241.3" width="0.2032" layer="94"/>
<wire x1="20.32" y1="241.3" x2="20.32" y2="182.88" width="0.2032" layer="94"/>
<wire x1="20.32" y1="182.88" x2="83.82" y2="182.88" width="0.2032" layer="94"/>
<wire x1="83.82" y1="182.88" x2="83.82" y2="236.22" width="0.2032" layer="94"/>
<wire x1="83.82" y1="236.22" x2="25.4" y2="236.22" width="0.2032" layer="94"/>
<wire x1="25.4" y1="236.22" x2="25.4" y2="190.5" width="0.2032" layer="94"/>
<wire x1="25.4" y1="190.5" x2="76.2" y2="190.5" width="0.2032" layer="94"/>
<wire x1="76.2" y1="190.5" x2="76.2" y2="228.6" width="0.2032" layer="94"/>
<wire x1="76.2" y1="228.6" x2="33.02" y2="228.6" width="0.2032" layer="94"/>
<wire x1="33.02" y1="228.6" x2="33.02" y2="198.12" width="0.2032" layer="94"/>
<wire x1="33.02" y1="198.12" x2="68.58" y2="198.12" width="0.2032" layer="94"/>
<wire x1="68.58" y1="198.12" x2="68.58" y2="220.98" width="0.2032" layer="94"/>
<wire x1="68.58" y1="220.98" x2="40.64" y2="220.98" width="0.2032" layer="94"/>
<wire x1="40.64" y1="220.98" x2="40.64" y2="205.74" width="0.2032" layer="94"/>
<wire x1="40.64" y1="205.74" x2="60.96" y2="205.74" width="0.2032" layer="94"/>
<wire x1="60.96" y1="205.74" x2="60.96" y2="213.36" width="0.2032" layer="94"/>
<wire x1="60.96" y1="213.36" x2="53.34" y2="213.36" width="0.2032" layer="94"/>
<wire x1="99.06" y1="170.18" x2="95.25" y2="170.18" width="0.2032" layer="94"/>
<wire x1="95.25" y1="170.18" x2="95.25" y2="243.84" width="0.2032" layer="94"/>
<wire x1="95.25" y1="243.84" x2="17.78" y2="243.84" width="0.2032" layer="94"/>
<wire x1="17.78" y1="243.84" x2="17.78" y2="179.07" width="0.2032" layer="94"/>
<wire x1="17.78" y1="179.07" x2="87.63" y2="179.07" width="0.2032" layer="94"/>
<wire x1="87.63" y1="179.07" x2="87.63" y2="238.76" width="0.2032" layer="94"/>
<wire x1="87.63" y1="238.76" x2="22.86" y2="238.76" width="0.2032" layer="94"/>
<wire x1="22.86" y1="238.76" x2="22.86" y2="186.69" width="0.2032" layer="94"/>
<wire x1="22.86" y1="186.69" x2="80.01" y2="186.69" width="0.2032" layer="94"/>
<wire x1="80.01" y1="186.69" x2="80.01" y2="232.41" width="0.2032" layer="94"/>
<wire x1="80.01" y1="232.41" x2="29.21" y2="232.41" width="0.2032" layer="94"/>
<wire x1="29.21" y1="232.41" x2="29.21" y2="194.31" width="0.2032" layer="94"/>
<wire x1="29.21" y1="194.31" x2="72.39" y2="194.31" width="0.2032" layer="94"/>
<wire x1="72.39" y1="194.31" x2="72.39" y2="224.79" width="0.2032" layer="94"/>
<wire x1="72.39" y1="224.79" x2="36.83" y2="224.79" width="0.2032" layer="94"/>
<wire x1="36.83" y1="224.79" x2="36.83" y2="201.93" width="0.2032" layer="94"/>
<wire x1="36.83" y1="201.93" x2="64.77" y2="201.93" width="0.2032" layer="94"/>
<wire x1="64.77" y1="201.93" x2="64.77" y2="217.17" width="0.2032" layer="94"/>
<wire x1="64.77" y1="217.17" x2="44.45" y2="217.17" width="0.2032" layer="94"/>
<wire x1="44.45" y1="217.17" x2="44.45" y2="209.55" width="0.2032" layer="94"/>
<wire x1="44.45" y1="209.55" x2="53.34" y2="209.55" width="0.2032" layer="94"/>
<wire x1="53.34" y1="213.36" x2="53.34" y2="209.55" width="0.2032" layer="94"/>
<polygon width="0.2032" layer="94">
<vertex x="99.06" y="177.8"/>
<vertex x="100.33" y="172.72"/>
<vertex x="97.79" y="172.72"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="95.25" y="172.72"/>
<vertex x="93.98" y="177.8"/>
<vertex x="96.52" y="177.8"/>
</polygon>
<wire x1="158.75" y1="224.79" x2="158.75" y2="196.85" width="0.2032" layer="94"/>
<wire x1="158.75" y1="196.85" x2="140.97" y2="196.85" width="0.2032" layer="94"/>
<wire x1="140.97" y1="196.85" x2="140.97" y2="217.17" width="0.2032" layer="94"/>
<wire x1="140.97" y1="217.17" x2="151.13" y2="217.17" width="0.2032" layer="94"/>
<wire x1="151.13" y1="217.17" x2="151.13" y2="204.47" width="0.2032" layer="94"/>
<wire x1="151.13" y1="204.47" x2="148.59" y2="204.47" width="0.2032" layer="94"/>
<wire x1="148.59" y1="204.47" x2="148.59" y2="213.36" width="0.2032" layer="94"/>
<wire x1="137.16" y1="220.98" x2="154.94" y2="220.98" width="0.2032" layer="94"/>
<wire x1="154.94" y1="220.98" x2="154.94" y2="200.66" width="0.2032" layer="94"/>
<wire x1="154.94" y1="200.66" x2="144.78" y2="200.66" width="0.2032" layer="94"/>
<wire x1="144.78" y1="200.66" x2="144.78" y2="213.36" width="0.2032" layer="94"/>
<wire x1="144.78" y1="213.36" x2="148.59" y2="213.36" width="0.2032" layer="94"/>
<polygon width="0.2032" layer="94">
<vertex x="110.49" y="172.72"/>
<vertex x="109.22" y="177.8"/>
<vertex x="111.76" y="177.8"/>
</polygon>
<dimension x1="180.34" y1="154.94" x2="137.16" y2="154.94" x3="158.75" y3="154.94" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="177.8" y1="152.4" x2="139.7" y2="152.4" x3="158.75" y3="152.4" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="175.26" y1="149.86" x2="142.24" y2="149.86" x3="158.75" y3="149.86" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="172.72" y1="147.32" x2="144.78" y2="147.32" x3="158.75" y3="147.32" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="170.18" y1="144.78" x2="144.78" y2="144.78" x3="157.48" y3="144.78" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="142.24" y1="142.24" x2="170.18" y2="142.24" x3="156.21" y3="142.24" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="139.7" y1="139.7" x2="172.72" y2="139.7" x3="156.21" y3="139.7" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="137.16" y1="137.16" x2="175.26" y2="137.16" x3="156.21" y3="137.16" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="139.7" y1="134.62" x2="177.8" y2="134.62" x3="158.75" y3="134.62" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="140.97" y1="132.08" x2="160.02" y2="132.08" x3="150.495" y3="132.08" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="165.1" y1="132.08" x2="180.34" y2="132.08" x3="172.72" y3="132.08" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="137.16" y1="154.94" x2="137.16" y2="137.16" x3="137.16" y3="146.05" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="139.7" y1="152.4" x2="139.7" y2="139.7" x3="139.7" y3="146.05" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="142.24" y1="149.86" x2="142.24" y2="142.24" x3="142.24" y3="146.05" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="172.72" y1="139.7" x2="172.72" y2="147.32" x3="172.72" y3="143.51" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="175.26" y1="137.16" x2="175.26" y2="149.86" x3="175.26" y3="143.51" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="177.8" y1="134.62" x2="177.8" y2="152.4" x3="177.8" y3="143.51" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="180.34" y1="132.08" x2="180.34" y2="154.94" x3="180.34" y3="143.51" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="160.02" y1="132.08" x2="160.02" y2="114.3" x3="160.02" y3="123.19" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="165.1" y1="114.3" x2="165.1" y2="132.08" x3="165.1" y3="123.19" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="106.68" y1="246.38" x2="180.34" y2="246.38" x3="143.51" y3="246.38" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="110.49" y1="243.84" x2="177.8" y2="243.84" x3="144.145" y3="243.84" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="114.3" y1="241.3" x2="175.26" y2="241.3" x3="144.78" y3="241.3" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="118.11" y1="238.76" x2="172.72" y2="238.76" x3="145.415" y3="238.76" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="121.92" y1="236.22" x2="170.18" y2="236.22" x3="146.05" y3="236.22" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="125.73" y1="232.41" x2="166.37" y2="232.41" x3="146.05" y3="232.41" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="129.54" y1="228.6" x2="162.56" y2="228.6" x3="146.05" y3="228.6" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="158.75" y1="224.79" x2="133.35" y2="224.79" x3="146.05" y3="224.79" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="137.16" y1="220.98" x2="154.94" y2="220.98" x3="146.05" y3="220.98" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="140.97" y1="217.17" x2="151.13" y2="217.17" x3="146.05" y3="217.17" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="154.94" y1="200.66" x2="144.78" y2="200.66" x3="149.86" y3="200.66" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="158.75" y1="196.85" x2="140.97" y2="196.85" x3="149.86" y3="196.85" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="162.56" y1="193.04" x2="137.16" y2="193.04" x3="149.86" y3="193.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="166.37" y1="189.23" x2="133.35" y2="189.23" x3="149.86" y3="189.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="170.18" y1="185.42" x2="129.54" y2="185.42" x3="149.86" y3="185.42" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="172.72" y1="181.61" x2="125.73" y2="181.61" x3="149.225" y3="181.61" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="175.26" y1="177.8" x2="121.92" y2="177.8" x3="148.59" y3="177.8" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="177.8" y1="173.99" x2="118.11" y2="173.99" x3="147.955" y3="173.99" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="180.34" y1="170.18" x2="114.3" y2="170.18" x3="147.32" y3="170.18" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="106.68" y1="170.18" x2="106.68" y2="246.38" x3="106.68" y3="208.28" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="110.49" y1="170.18" x2="110.49" y2="243.84" x3="110.49" y3="207.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="114.3" y1="170.18" x2="114.3" y2="241.3" x3="114.3" y3="205.74" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="118.11" y1="173.99" x2="118.11" y2="238.76" x3="118.11" y3="206.375" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="121.92" y1="177.8" x2="121.92" y2="236.22" x3="121.92" y3="207.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="125.73" y1="181.61" x2="125.73" y2="232.41" x3="125.73" y3="207.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="129.54" y1="185.42" x2="129.54" y2="228.6" x3="129.54" y3="207.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="133.35" y1="189.23" x2="133.35" y2="224.79" x3="133.35" y3="207.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="137.16" y1="193.04" x2="137.16" y2="220.98" x3="137.16" y3="207.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="140.97" y1="196.85" x2="140.97" y2="217.17" x3="140.97" y3="207.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="144.78" y1="200.66" x2="144.78" y2="213.36" x3="144.78" y3="207.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="148.59" y1="204.47" x2="148.59" y2="213.36" x3="148.59" y3="208.915" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="151.13" y1="217.17" x2="151.13" y2="204.47" x3="151.13" y3="210.82" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="154.94" y1="220.98" x2="154.94" y2="200.66" x3="154.94" y3="210.82" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="158.75" y1="224.79" x2="158.75" y2="196.85" x3="158.75" y3="210.82" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="162.56" y1="228.6" x2="162.56" y2="193.04" x3="162.56" y3="210.82" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="166.37" y1="232.41" x2="166.37" y2="189.23" x3="166.37" y3="210.82" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="170.18" y1="236.22" x2="170.18" y2="185.42" x3="170.18" y3="210.82" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="172.72" y1="238.76" x2="172.72" y2="181.61" x3="172.72" y3="210.185" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="175.26" y1="241.3" x2="175.26" y2="177.8" x3="175.26" y3="209.55" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="177.8" y1="243.84" x2="177.8" y2="173.99" x3="177.8" y3="208.915" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="180.34" y1="246.38" x2="180.34" y2="170.18" x3="180.34" y3="208.28" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="99.06" y1="246.38" x2="15.24" y2="246.38" x3="57.15" y3="246.38" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="95.25" y1="243.84" x2="17.78" y2="243.84" x3="56.515" y3="243.84" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="91.44" y1="241.3" x2="20.32" y2="241.3" x3="55.88" y3="241.3" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="87.63" y1="238.76" x2="22.86" y2="238.76" x3="55.245" y3="238.76" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="83.82" y1="236.22" x2="25.4" y2="236.22" x3="54.61" y3="236.22" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="80.01" y1="232.41" x2="29.21" y2="232.41" x3="54.61" y3="232.41" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="76.2" y1="228.6" x2="33.02" y2="228.6" x3="54.61" y3="228.6" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="72.39" y1="224.79" x2="36.83" y2="224.79" x3="54.61" y3="224.79" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="68.58" y1="220.98" x2="40.64" y2="220.98" x3="54.61" y3="220.98" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="64.77" y1="217.17" x2="44.45" y2="217.17" x3="54.61" y3="217.17" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="60.96" y1="213.36" x2="53.34" y2="213.36" x3="57.15" y3="213.36" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="44.45" y1="209.55" x2="53.34" y2="209.55" x3="48.895" y3="209.55" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="40.64" y1="205.74" x2="60.96" y2="205.74" x3="50.8" y3="205.74" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="36.83" y1="201.93" x2="64.77" y2="201.93" x3="50.8" y3="201.93" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="33.02" y1="198.12" x2="68.58" y2="198.12" x3="50.8" y3="198.12" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="29.21" y1="194.31" x2="72.39" y2="194.31" x3="50.8" y3="194.31" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="25.4" y1="190.5" x2="76.2" y2="190.5" x3="50.8" y3="190.5" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="22.86" y1="186.69" x2="80.01" y2="186.69" x3="51.435" y3="186.69" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="20.32" y1="182.88" x2="83.82" y2="182.88" x3="52.07" y3="182.88" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="17.78" y1="179.07" x2="87.63" y2="179.07" x3="52.705" y3="179.07" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="15.24" y1="175.26" x2="91.44" y2="175.26" x3="53.34" y3="175.26" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="15.24" y1="246.38" x2="15.24" y2="175.26" x3="15.24" y3="210.82" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="17.78" y1="243.84" x2="17.78" y2="179.07" x3="17.78" y3="211.455" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="20.32" y1="241.3" x2="20.32" y2="182.88" x3="20.32" y3="212.09" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="22.86" y1="238.76" x2="22.86" y2="186.69" x3="22.86" y3="212.725" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="25.4" y1="236.22" x2="25.4" y2="190.5" x3="25.4" y3="213.36" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="29.21" y1="232.41" x2="29.21" y2="194.31" x3="29.21" y3="213.36" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="33.02" y1="228.6" x2="33.02" y2="198.12" x3="33.02" y3="213.36" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="36.83" y1="224.79" x2="36.83" y2="201.93" x3="36.83" y3="213.36" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="40.64" y1="220.98" x2="40.64" y2="205.74" x3="40.64" y3="213.36" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="44.45" y1="217.17" x2="44.45" y2="209.55" x3="44.45" y3="213.36" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="60.96" y1="205.74" x2="60.96" y2="213.36" x3="60.96" y3="209.55" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="64.77" y1="201.93" x2="64.77" y2="217.17" x3="64.77" y3="209.55" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="68.58" y1="198.12" x2="68.58" y2="220.98" x3="68.58" y3="209.55" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="72.39" y1="194.31" x2="72.39" y2="224.79" x3="72.39" y3="209.55" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="76.2" y1="190.5" x2="76.2" y2="228.6" x3="76.2" y3="209.55" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="80.01" y1="186.69" x2="80.01" y2="232.41" x3="80.01" y3="209.55" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="83.82" y1="182.88" x2="83.82" y2="236.22" x3="83.82" y3="209.55" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="87.63" y1="179.07" x2="87.63" y2="238.76" x3="87.63" y3="208.915" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="91.44" y1="175.26" x2="91.44" y2="241.3" x3="91.44" y3="208.28" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="95.25" y1="170.18" x2="95.25" y2="243.84" x3="95.25" y3="207.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="99.06" y1="170.18" x2="99.06" y2="246.38" x3="99.06" y3="208.28" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="30.48" y1="91.44" x2="38.1" y2="91.44" x3="34.29" y3="91.44" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="38.1" y1="83.82" x2="48.26" y2="83.82" x3="43.18" y3="83.82" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="35.56" y1="81.28" x2="45.72" y2="81.28" x3="40.64" y3="81.28" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="35.56" y1="78.74" x2="43.18" y2="78.74" x3="39.37" y3="78.74" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="15.24" y1="73.66" x2="30.48" y2="73.66" x3="22.86" y3="73.66" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="17.78" y1="71.12" x2="33.02" y2="71.12" x3="25.4" y3="71.12" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="20.32" y1="68.58" x2="35.56" y2="68.58" x3="27.94" y3="68.58" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="22.86" y1="66.04" x2="38.1" y2="66.04" x3="30.48" y3="66.04" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="25.4" y1="63.5" x2="40.64" y2="63.5" x3="33.02" y3="63.5" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="43.18" y1="60.96" x2="25.4" y2="60.96" x3="34.29" y3="60.96" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="45.72" y1="58.42" x2="22.86" y2="58.42" x3="34.29" y3="58.42" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="48.26" y1="55.88" x2="20.32" y2="55.88" x3="34.29" y3="55.88" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="50.8" y1="53.34" x2="17.78" y2="53.34" x3="34.29" y3="53.34" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="53.34" y1="50.8" x2="15.24" y2="50.8" x3="34.29" y3="50.8" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="15.24" y1="50.8" x2="15.24" y2="73.66" x3="15.24" y3="62.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="17.78" y1="53.34" x2="17.78" y2="71.12" x3="17.78" y3="62.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="20.32" y1="55.88" x2="20.32" y2="68.58" x3="20.32" y3="62.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="22.86" y1="58.42" x2="22.86" y2="66.04" x3="22.86" y3="62.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="30.48" y1="73.66" x2="30.48" y2="91.44" x3="30.48" y3="82.55" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="33.02" y1="71.12" x2="33.02" y2="88.9" x3="33.02" y3="80.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="35.56" y1="88.9" x2="35.56" y2="81.28" x3="35.56" y3="85.09" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="35.56" y1="68.58" x2="35.56" y2="78.74" x3="35.56" y3="73.66" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="38.1" y1="66.04" x2="38.1" y2="76.2" x3="38.1" y3="71.12" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="40.64" y1="76.2" x2="40.64" y2="63.5" x3="40.64" y3="69.85" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="43.18" y1="78.74" x2="43.18" y2="60.96" x3="43.18" y3="69.85" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="45.72" y1="81.28" x2="45.72" y2="58.42" x3="45.72" y3="69.85" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="48.26" y1="83.82" x2="48.26" y2="55.88" x3="48.26" y3="69.85" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="50.8" y1="93.98" x2="50.8" y2="53.34" x3="50.8" y3="73.66" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="53.34" y1="96.52" x2="53.34" y2="50.8" x3="53.34" y3="73.66" textsize="1.778" layer="98" unit="inch"/>
<wire x1="119.38" y1="91.44" x2="119.38" y2="15.24" width="0.2032" layer="94"/>
<wire x1="119.38" y1="15.24" x2="78.74" y2="15.24" width="0.2032" layer="94"/>
<wire x1="78.74" y1="15.24" x2="78.74" y2="30.48" width="0.2032" layer="94"/>
<wire x1="78.74" y1="30.48" x2="60.96" y2="30.48" width="0.2032" layer="94"/>
<wire x1="60.96" y1="30.48" x2="60.96" y2="91.44" width="0.2032" layer="94"/>
<wire x1="60.96" y1="91.44" x2="111.76" y2="91.44" width="0.2032" layer="94"/>
<wire x1="111.76" y1="91.44" x2="111.76" y2="20.32" width="0.2032" layer="94"/>
<wire x1="111.76" y1="20.32" x2="83.82" y2="20.32" width="0.2032" layer="94"/>
<wire x1="83.82" y1="20.32" x2="83.82" y2="35.56" width="0.2032" layer="94"/>
<wire x1="83.82" y1="35.56" x2="68.58" y2="35.56" width="0.2032" layer="94"/>
<wire x1="68.58" y1="35.56" x2="68.58" y2="83.82" width="0.2032" layer="94"/>
<wire x1="68.58" y1="83.82" x2="104.14" y2="83.82" width="0.2032" layer="94"/>
<wire x1="104.14" y1="83.82" x2="104.14" y2="25.4" width="0.2032" layer="94"/>
<wire x1="104.14" y1="25.4" x2="88.9" y2="25.4" width="0.2032" layer="94"/>
<wire x1="88.9" y1="25.4" x2="88.9" y2="40.64" width="0.2032" layer="94"/>
<wire x1="88.9" y1="40.64" x2="76.2" y2="40.64" width="0.2032" layer="94"/>
<wire x1="76.2" y1="40.64" x2="76.2" y2="76.2" width="0.2032" layer="94"/>
<wire x1="76.2" y1="76.2" x2="96.52" y2="76.2" width="0.2032" layer="94"/>
<wire x1="96.52" y1="76.2" x2="96.52" y2="48.26" width="0.2032" layer="94"/>
<wire x1="119.38" y1="91.44" x2="115.57" y2="91.44" width="0.2032" layer="94"/>
<wire x1="115.57" y1="91.44" x2="115.57" y2="17.78" width="0.2032" layer="94"/>
<wire x1="115.57" y1="17.78" x2="81.28" y2="17.78" width="0.2032" layer="94"/>
<wire x1="81.28" y1="17.78" x2="81.28" y2="33.02" width="0.2032" layer="94"/>
<wire x1="81.28" y1="33.02" x2="64.77" y2="33.02" width="0.2032" layer="94"/>
<wire x1="64.77" y1="33.02" x2="64.77" y2="87.63" width="0.2032" layer="94"/>
<wire x1="64.77" y1="87.63" x2="107.95" y2="87.63" width="0.2032" layer="94"/>
<wire x1="107.95" y1="87.63" x2="107.95" y2="22.86" width="0.2032" layer="94"/>
<wire x1="107.95" y1="22.86" x2="86.36" y2="22.86" width="0.2032" layer="94"/>
<wire x1="86.36" y1="22.86" x2="86.36" y2="38.1" width="0.2032" layer="94"/>
<wire x1="86.36" y1="38.1" x2="72.39" y2="38.1" width="0.2032" layer="94"/>
<wire x1="72.39" y1="38.1" x2="72.39" y2="80.01" width="0.2032" layer="94"/>
<wire x1="72.39" y1="80.01" x2="100.33" y2="80.01" width="0.2032" layer="94"/>
<wire x1="100.33" y1="80.01" x2="100.33" y2="29.21" width="0.2032" layer="94"/>
<wire x1="96.52" y1="36.83" x2="96.52" y2="44.45" width="0.2032" layer="94"/>
<wire x1="96.52" y1="44.45" x2="80.01" y2="44.45" width="0.2032" layer="94"/>
<wire x1="80.01" y1="44.45" x2="80.01" y2="72.39" width="0.2032" layer="94"/>
<wire x1="80.01" y1="72.39" x2="92.71" y2="72.39" width="0.2032" layer="94"/>
<wire x1="92.71" y1="72.39" x2="92.71" y2="52.07" width="0.2032" layer="94"/>
<wire x1="92.71" y1="52.07" x2="88.9" y2="52.07" width="0.2032" layer="94"/>
<wire x1="88.9" y1="52.07" x2="88.9" y2="68.58" width="0.2032" layer="94"/>
<wire x1="88.9" y1="68.58" x2="83.82" y2="68.58" width="0.2032" layer="94"/>
<wire x1="83.82" y1="68.58" x2="83.82" y2="48.26" width="0.2032" layer="94"/>
<wire x1="83.82" y1="48.26" x2="96.52" y2="48.26" width="0.2032" layer="94"/>
<wire x1="100.33" y1="29.21" x2="92.71" y2="29.21" width="0.2032" layer="94"/>
<wire x1="92.71" y1="29.21" x2="92.71" y2="36.83" width="0.2032" layer="94"/>
<wire x1="92.71" y1="36.83" x2="96.52" y2="36.83" width="0.2032" layer="94"/>
<polygon width="0.2032" layer="94">
<vertex x="119.38" y="83.82"/>
<vertex x="118.11" y="88.9"/>
<vertex x="120.65" y="88.9"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="115.57" y="88.9"/>
<vertex x="116.84" y="83.82"/>
<vertex x="114.3" y="83.82"/>
</polygon>
<wire x1="121.92" y1="91.44" x2="121.92" y2="15.24" width="0.2032" layer="94"/>
<wire x1="121.92" y1="15.24" x2="162.56" y2="15.24" width="0.2032" layer="94"/>
<wire x1="162.56" y1="15.24" x2="162.56" y2="30.48" width="0.2032" layer="94"/>
<wire x1="162.56" y1="30.48" x2="180.34" y2="30.48" width="0.2032" layer="94"/>
<wire x1="180.34" y1="30.48" x2="180.34" y2="91.44" width="0.2032" layer="94"/>
<wire x1="180.34" y1="91.44" x2="129.54" y2="91.44" width="0.2032" layer="94"/>
<wire x1="129.54" y1="91.44" x2="129.54" y2="20.32" width="0.2032" layer="94"/>
<wire x1="129.54" y1="20.32" x2="157.48" y2="20.32" width="0.2032" layer="94"/>
<wire x1="157.48" y1="20.32" x2="157.48" y2="35.56" width="0.2032" layer="94"/>
<wire x1="157.48" y1="35.56" x2="175.26" y2="35.56" width="0.2032" layer="94"/>
<wire x1="175.26" y1="35.56" x2="175.26" y2="83.82" width="0.2032" layer="94"/>
<wire x1="175.26" y1="83.82" x2="137.16" y2="83.82" width="0.2032" layer="94"/>
<wire x1="137.16" y1="83.82" x2="137.16" y2="25.4" width="0.2032" layer="94"/>
<wire x1="137.16" y1="25.4" x2="152.4" y2="25.4" width="0.2032" layer="94"/>
<wire x1="152.4" y1="25.4" x2="152.4" y2="40.64" width="0.2032" layer="94"/>
<wire x1="152.4" y1="40.64" x2="170.18" y2="40.64" width="0.2032" layer="94"/>
<wire x1="170.18" y1="40.64" x2="170.18" y2="76.2" width="0.2032" layer="94"/>
<wire x1="170.18" y1="76.2" x2="144.78" y2="76.2" width="0.2032" layer="94"/>
<wire x1="144.78" y1="76.2" x2="144.78" y2="48.26" width="0.2032" layer="94"/>
<wire x1="121.92" y1="91.44" x2="125.73" y2="91.44" width="0.2032" layer="94"/>
<wire x1="125.73" y1="91.44" x2="125.73" y2="17.78" width="0.2032" layer="94"/>
<wire x1="125.73" y1="17.78" x2="160.02" y2="17.78" width="0.2032" layer="94"/>
<wire x1="160.02" y1="17.78" x2="160.02" y2="33.02" width="0.2032" layer="94"/>
<wire x1="160.02" y1="33.02" x2="177.8" y2="33.02" width="0.2032" layer="94"/>
<wire x1="177.8" y1="33.02" x2="177.8" y2="87.63" width="0.2032" layer="94"/>
<wire x1="177.8" y1="87.63" x2="133.35" y2="87.63" width="0.2032" layer="94"/>
<wire x1="133.35" y1="87.63" x2="133.35" y2="22.86" width="0.2032" layer="94"/>
<wire x1="133.35" y1="22.86" x2="154.94" y2="22.86" width="0.2032" layer="94"/>
<wire x1="154.94" y1="22.86" x2="154.94" y2="38.1" width="0.2032" layer="94"/>
<wire x1="154.94" y1="38.1" x2="172.72" y2="38.1" width="0.2032" layer="94"/>
<wire x1="172.72" y1="38.1" x2="172.72" y2="80.01" width="0.2032" layer="94"/>
<wire x1="172.72" y1="80.01" x2="140.97" y2="80.01" width="0.2032" layer="94"/>
<wire x1="140.97" y1="80.01" x2="140.97" y2="29.21" width="0.2032" layer="94"/>
<wire x1="140.97" y1="29.21" x2="148.59" y2="29.21" width="0.2032" layer="94"/>
<wire x1="148.59" y1="29.21" x2="148.59" y2="36.83" width="0.2032" layer="94"/>
<wire x1="148.59" y1="36.83" x2="144.78" y2="36.83" width="0.2032" layer="94"/>
<wire x1="144.78" y1="36.83" x2="144.78" y2="44.45" width="0.2032" layer="94"/>
<wire x1="144.78" y1="44.45" x2="166.37" y2="44.45" width="0.2032" layer="94"/>
<wire x1="166.37" y1="44.45" x2="166.37" y2="72.39" width="0.2032" layer="94"/>
<wire x1="166.37" y1="72.39" x2="148.59" y2="72.39" width="0.2032" layer="94"/>
<wire x1="148.59" y1="72.39" x2="148.59" y2="52.07" width="0.2032" layer="94"/>
<wire x1="148.59" y1="52.07" x2="158.75" y2="52.07" width="0.2032" layer="94"/>
<wire x1="158.75" y1="52.07" x2="158.75" y2="64.77" width="0.2032" layer="94"/>
<wire x1="158.75" y1="64.77" x2="156.21" y2="64.77" width="0.2032" layer="94"/>
<wire x1="156.21" y1="64.77" x2="156.21" y2="55.88" width="0.2032" layer="94"/>
<wire x1="156.21" y1="55.88" x2="152.4" y2="55.88" width="0.2032" layer="94"/>
<wire x1="152.4" y1="55.88" x2="152.4" y2="68.58" width="0.2032" layer="94"/>
<wire x1="152.4" y1="68.58" x2="162.56" y2="68.58" width="0.2032" layer="94"/>
<wire x1="162.56" y1="68.58" x2="162.56" y2="48.26" width="0.2032" layer="94"/>
<wire x1="162.56" y1="48.26" x2="144.78" y2="48.26" width="0.2032" layer="94"/>
<polygon width="0.2032" layer="94">
<vertex x="121.92" y="83.82"/>
<vertex x="120.65" y="88.9"/>
<vertex x="123.19" y="88.9"/>
</polygon>
<polygon width="0.2032" layer="94">
<vertex x="125.73" y="88.9"/>
<vertex x="127" y="83.82"/>
<vertex x="124.46" y="83.82"/>
</polygon>
<dimension x1="60.96" y1="91.44" x2="111.76" y2="91.44" x3="86.36" y3="91.44" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="64.77" y1="87.63" x2="107.95" y2="87.63" x3="86.36" y3="87.63" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="68.58" y1="83.82" x2="104.14" y2="83.82" x3="86.36" y3="83.82" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="72.39" y1="80.01" x2="100.33" y2="80.01" x3="86.36" y3="80.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="76.2" y1="76.2" x2="96.52" y2="76.2" x3="86.36" y3="76.2" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="80.01" y1="72.39" x2="92.71" y2="72.39" x3="86.36" y3="72.39" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="83.82" y1="48.26" x2="96.52" y2="48.26" x3="90.17" y3="48.26" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="96.52" y1="44.45" x2="80.01" y2="44.45" x3="88.265" y3="44.45" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="104.14" y1="25.4" x2="88.9" y2="25.4" x3="96.52" y3="25.4" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="107.95" y1="22.86" x2="86.36" y2="22.86" x3="97.155" y3="22.86" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="111.76" y1="20.32" x2="83.82" y2="20.32" x3="97.79" y3="20.32" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="115.57" y1="17.78" x2="81.28" y2="17.78" x3="98.425" y3="17.78" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="119.38" y1="15.24" x2="78.74" y2="15.24" x3="99.06" y3="15.24" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="88.9" y1="40.64" x2="76.2" y2="40.64" x3="82.55" y3="40.64" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="86.36" y1="38.1" x2="72.39" y2="38.1" x3="79.375" y3="38.1" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="83.82" y1="35.56" x2="68.58" y2="35.56" x3="76.2" y3="35.56" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="81.28" y1="33.02" x2="64.77" y2="33.02" x3="73.025" y3="33.02" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="78.74" y1="30.48" x2="60.96" y2="30.48" x3="69.85" y3="30.48" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="100.33" y1="29.21" x2="92.71" y2="29.21" x3="96.52" y3="29.21" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="180.34" y1="91.44" x2="129.54" y2="91.44" x3="154.94" y3="91.44" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="177.8" y1="87.63" x2="133.35" y2="87.63" x3="155.575" y3="87.63" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="175.26" y1="83.82" x2="137.16" y2="83.82" x3="156.21" y3="83.82" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="172.72" y1="80.01" x2="140.97" y2="80.01" x3="156.845" y3="80.01" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="170.18" y1="76.2" x2="144.78" y2="76.2" x3="157.48" y3="76.2" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="166.37" y1="72.39" x2="148.59" y2="72.39" x3="157.48" y3="72.39" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="152.4" y1="68.58" x2="162.56" y2="68.58" x3="157.48" y3="68.58" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="148.59" y1="52.07" x2="158.75" y2="52.07" x3="153.67" y3="52.07" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="162.56" y1="48.26" x2="144.78" y2="48.26" x3="153.67" y3="48.26" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="144.78" y1="44.45" x2="166.37" y2="44.45" x3="155.575" y3="44.45" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="140.97" y1="29.21" x2="148.59" y2="29.21" x3="144.78" y3="29.21" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="152.4" y1="40.64" x2="170.18" y2="40.64" x3="161.29" y3="40.64" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="154.94" y1="38.1" x2="172.72" y2="38.1" x3="163.83" y3="38.1" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="157.48" y1="35.56" x2="175.26" y2="35.56" x3="166.37" y3="35.56" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="160.02" y1="33.02" x2="177.8" y2="33.02" x3="168.91" y3="33.02" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="162.56" y1="30.48" x2="180.34" y2="30.48" x3="171.45" y3="30.48" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="137.16" y1="25.4" x2="152.4" y2="25.4" x3="144.78" y3="25.4" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="133.35" y1="22.86" x2="154.94" y2="22.86" x3="144.145" y3="22.86" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="129.54" y1="20.32" x2="157.48" y2="20.32" x3="143.51" y3="20.32" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="125.73" y1="17.78" x2="160.02" y2="17.78" x3="142.875" y3="17.78" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="121.92" y1="15.24" x2="162.56" y2="15.24" x3="142.24" y3="15.24" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="60.96" y1="30.48" x2="60.96" y2="91.44" x3="60.96" y3="60.96" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="64.77" y1="33.02" x2="64.77" y2="87.63" x3="64.77" y3="60.325" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="68.58" y1="35.56" x2="68.58" y2="83.82" x3="68.58" y3="59.69" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="72.39" y1="38.1" x2="72.39" y2="80.01" x3="72.39" y3="59.055" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="76.2" y1="40.64" x2="76.2" y2="76.2" x3="76.2" y3="58.42" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="80.01" y1="44.45" x2="80.01" y2="72.39" x3="80.01" y3="58.42" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="83.82" y1="68.58" x2="83.82" y2="48.26" x3="83.82" y3="58.42" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="88.9" y1="52.07" x2="88.9" y2="68.58" x3="88.9" y3="60.325" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="92.71" y1="72.39" x2="92.71" y2="52.07" x3="92.71" y3="62.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="96.52" y1="76.2" x2="96.52" y2="48.26" x3="96.52" y3="62.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="96.52" y1="36.83" x2="96.52" y2="44.45" x3="96.52" y3="40.64" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="92.71" y1="29.21" x2="92.71" y2="36.83" x3="92.71" y3="33.02" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="78.74" y1="15.24" x2="78.74" y2="30.48" x3="78.74" y3="22.86" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="81.28" y1="17.78" x2="81.28" y2="33.02" x3="81.28" y3="25.4" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="83.82" y1="20.32" x2="83.82" y2="35.56" x3="83.82" y3="27.94" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="86.36" y1="22.86" x2="86.36" y2="38.1" x3="86.36" y3="30.48" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="88.9" y1="25.4" x2="88.9" y2="40.64" x3="88.9" y3="33.02" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="100.33" y1="80.01" x2="100.33" y2="29.21" x3="100.33" y3="54.61" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="104.14" y1="83.82" x2="104.14" y2="25.4" x3="104.14" y3="54.61" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="107.95" y1="87.63" x2="107.95" y2="22.86" x3="107.95" y3="55.245" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="111.76" y1="91.44" x2="111.76" y2="20.32" x3="111.76" y3="55.88" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="115.57" y1="91.44" x2="115.57" y2="17.78" x3="115.57" y3="54.61" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="119.38" y1="91.44" x2="119.38" y2="15.24" x3="119.38" y3="53.34" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="121.92" y1="91.44" x2="121.92" y2="15.24" x3="121.92" y3="53.34" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="125.73" y1="91.44" x2="125.73" y2="17.78" x3="125.73" y3="54.61" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="129.54" y1="91.44" x2="129.54" y2="20.32" x3="129.54" y3="55.88" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="133.35" y1="87.63" x2="133.35" y2="22.86" x3="133.35" y3="55.245" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="137.16" y1="83.82" x2="137.16" y2="25.4" x3="137.16" y3="54.61" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="140.97" y1="80.01" x2="140.97" y2="29.21" x3="140.97" y3="54.61" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="144.78" y1="36.83" x2="144.78" y2="44.45" x3="144.78" y3="40.64" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="148.59" y1="29.21" x2="148.59" y2="36.83" x3="148.59" y3="33.02" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="144.78" y1="76.2" x2="144.78" y2="48.26" x3="144.78" y3="62.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="148.59" y1="72.39" x2="148.59" y2="52.07" x3="148.59" y3="62.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="152.4" y1="55.88" x2="152.4" y2="68.58" x3="152.4" y3="62.23" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="156.21" y1="64.77" x2="156.21" y2="55.88" x3="156.21" y3="60.325" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="158.75" y1="52.07" x2="158.75" y2="64.77" x3="158.75" y3="58.42" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="162.56" y1="68.58" x2="162.56" y2="48.26" x3="162.56" y3="58.42" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="166.37" y1="44.45" x2="166.37" y2="72.39" x3="166.37" y3="58.42" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="170.18" y1="40.64" x2="170.18" y2="76.2" x3="170.18" y3="58.42" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="172.72" y1="38.1" x2="172.72" y2="80.01" x3="172.72" y3="59.055" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="175.26" y1="35.56" x2="175.26" y2="83.82" x3="175.26" y3="59.69" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="177.8" y1="33.02" x2="177.8" y2="87.63" x3="177.8" y3="60.325" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="180.34" y1="30.48" x2="180.34" y2="91.44" x3="180.34" y3="60.96" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="152.4" y1="25.4" x2="152.4" y2="40.64" x3="152.4" y3="33.02" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="154.94" y1="22.86" x2="154.94" y2="38.1" x3="154.94" y3="30.48" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="157.48" y1="20.32" x2="157.48" y2="35.56" x3="157.48" y3="27.94" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="160.02" y1="17.78" x2="160.02" y2="33.02" x3="160.02" y3="25.4" textsize="1.778" layer="98" unit="inch"/>
<dimension x1="162.56" y1="15.24" x2="162.56" y2="30.48" x3="162.56" y3="22.86" textsize="1.778" layer="98" unit="inch"/>
</plain>
<instances>
</instances>
<busses>
<bus name="B$5">
<segment>
<wire x1="132.08" y1="115.57" x2="102.87" y2="115.57" width="0.762" layer="92"/>
<wire x1="102.87" y1="115.57" x2="93.98" y2="106.68" width="0.762" layer="92"/>
<wire x1="93.98" y1="106.68" x2="93.98" y2="101.6" width="0.762" layer="92"/>
<wire x1="93.98" y1="101.6" x2="101.6" y2="93.98" width="0.762" layer="92"/>
<wire x1="101.6" y1="93.98" x2="116.84" y2="93.98" width="0.762" layer="92"/>
<wire x1="116.84" y1="93.98" x2="119.38" y2="91.44" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="B$6">
<segment>
<wire x1="132.08" y1="118.11" x2="101.6" y2="118.11" width="0.762" layer="92"/>
<wire x1="101.6" y1="118.11" x2="76.2" y2="96.52" width="0.762" layer="92"/>
<wire x1="76.2" y1="96.52" x2="53.34" y2="96.52" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="B$7">
<segment>
<wire x1="132.08" y1="125.73" x2="130.81" y2="125.73" width="0.762" layer="92"/>
<wire x1="130.81" y1="125.73" x2="106.68" y2="152.4" width="0.762" layer="92"/>
<wire x1="106.68" y1="152.4" x2="106.68" y2="170.18" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="B$8">
<segment>
<wire x1="132.08" y1="123.19" x2="129.54" y2="123.19" width="0.762" layer="92"/>
<wire x1="129.54" y1="123.19" x2="99.06" y2="157.48" width="0.762" layer="92"/>
<wire x1="99.06" y1="157.48" x2="99.06" y2="170.18" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="B$2">
<segment>
<wire x1="132.08" y1="113.03" x2="102.87" y2="113.03" width="0.762" layer="92"/>
<wire x1="102.87" y1="113.03" x2="96.52" y2="106.68" width="0.762" layer="92"/>
<wire x1="96.52" y1="106.68" x2="96.52" y2="101.6" width="0.762" layer="92"/>
<wire x1="96.52" y1="101.6" x2="101.6" y2="96.52" width="0.762" layer="92"/>
<wire x1="101.6" y1="96.52" x2="116.84" y2="96.52" width="0.762" layer="92"/>
<wire x1="116.84" y1="96.52" x2="121.92" y2="91.44" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<wire x1="175.26" y1="114.3" x2="175.26" y2="129.54" width="0.1524" layer="91" style="shortdash"/>
<wire x1="175.26" y1="129.54" x2="167.64" y2="129.54" width="0.1524" layer="91" style="shortdash"/>
<wire x1="167.64" y1="129.54" x2="167.64" y2="114.3" width="0.1524" layer="91" style="shortdash"/>
<wire x1="167.64" y1="114.3" x2="160.02" y2="114.3" width="0.1524" layer="91" style="shortdash"/>
<wire x1="160.02" y1="114.3" x2="160.02" y2="106.68" width="0.1524" layer="91" style="shortdash"/>
<wire x1="160.02" y1="106.68" x2="182.88" y2="106.68" width="0.1524" layer="91" style="shortdash"/>
<wire x1="182.88" y1="106.68" x2="182.88" y2="114.3" width="0.1524" layer="91" style="shortdash"/>
<wire x1="182.88" y1="114.3" x2="175.26" y2="114.3" width="0.1524" layer="91" style="shortdash"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="134.62" y1="129.54" x2="157.48" y2="129.54" width="0.1524" layer="91" style="shortdash"/>
<wire x1="157.48" y1="129.54" x2="157.48" y2="106.68" width="0.1524" layer="91" style="shortdash"/>
<wire x1="157.48" y1="106.68" x2="134.62" y2="106.68" width="0.1524" layer="91" style="shortdash"/>
<wire x1="134.62" y1="106.68" x2="134.62" y2="129.54" width="0.1524" layer="91" style="shortdash"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="12.7" y1="48.26" x2="55.88" y2="48.26" width="0.1524" layer="91" style="shortdash"/>
<wire x1="55.88" y1="48.26" x2="55.88" y2="27.94" width="0.1524" layer="91" style="shortdash"/>
<wire x1="55.88" y1="27.94" x2="12.7" y2="27.94" width="0.1524" layer="91" style="shortdash"/>
<wire x1="12.7" y1="27.94" x2="12.7" y2="48.26" width="0.1524" layer="91" style="shortdash"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="12.7" y1="91.44" x2="20.32" y2="91.44" width="0.1524" layer="91" style="shortdash"/>
<wire x1="20.32" y1="91.44" x2="20.32" y2="76.2" width="0.1524" layer="91" style="shortdash"/>
<wire x1="20.32" y1="76.2" x2="27.94" y2="76.2" width="0.1524" layer="91" style="shortdash"/>
<wire x1="27.94" y1="76.2" x2="27.94" y2="91.44" width="0.1524" layer="91" style="shortdash"/>
<wire x1="27.94" y1="91.44" x2="35.56" y2="91.44" width="0.1524" layer="91" style="shortdash"/>
<wire x1="35.56" y1="91.44" x2="35.56" y2="99.06" width="0.1524" layer="91" style="shortdash"/>
<wire x1="35.56" y1="99.06" x2="12.7" y2="99.06" width="0.1524" layer="91" style="shortdash"/>
<wire x1="12.7" y1="99.06" x2="12.7" y2="91.44" width="0.1524" layer="91" style="shortdash"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="40.64" y1="99.06" x2="48.26" y2="99.06" width="0.1524" layer="91" style="shortdash"/>
<wire x1="48.26" y1="99.06" x2="48.26" y2="83.82" width="0.1524" layer="91" style="shortdash"/>
<wire x1="48.26" y1="83.82" x2="40.64" y2="83.82" width="0.1524" layer="91" style="shortdash"/>
<wire x1="40.64" y1="83.82" x2="40.64" y2="99.06" width="0.1524" layer="91" style="shortdash"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="182.88" y1="160.02" x2="142.24" y2="160.02" width="0.1524" layer="91" style="shortdash"/>
<wire x1="142.24" y1="160.02" x2="142.24" y2="170.18" width="0.1524" layer="91" style="shortdash"/>
<wire x1="142.24" y1="170.18" x2="182.88" y2="170.18" width="0.1524" layer="91" style="shortdash"/>
<wire x1="182.88" y1="170.18" x2="182.88" y2="160.02" width="0.1524" layer="91" style="shortdash"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="12.7" y1="165.1" x2="53.34" y2="165.1" width="0.1524" layer="91" style="shortdash"/>
<wire x1="53.34" y1="165.1" x2="53.34" y2="175.26" width="0.1524" layer="91" style="shortdash"/>
<wire x1="53.34" y1="175.26" x2="12.7" y2="175.26" width="0.1524" layer="91" style="shortdash"/>
<wire x1="12.7" y1="175.26" x2="12.7" y2="165.1" width="0.1524" layer="91" style="shortdash"/>
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
