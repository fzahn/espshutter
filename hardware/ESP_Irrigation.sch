<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.4">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
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
<libraries>
<library name="con-wago-508">
<description>&lt;b&gt;Wago Screw Clamps&lt;/b&gt;&lt;p&gt;
Grid 5.08 mm&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="W237-12P">
<description>&lt;b&gt;WAGO SREW CLAMP&lt;/b&gt;</description>
<wire x1="-28.9306" y1="-1.651" x2="-26.924" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-23.7744" y1="-1.6764" x2="-21.8694" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-18.6944" y1="-1.6002" x2="-16.891" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-13.6906" y1="-1.651" x2="-11.684" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-8.5344" y1="-1.6764" x2="-6.6294" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-3.4544" y1="-1.6002" x2="-1.651" y2="0.3556" width="0.254" layer="51"/>
<wire x1="1.5494" y1="-1.651" x2="3.556" y2="0.3556" width="0.254" layer="51"/>
<wire x1="6.7056" y1="-1.6764" x2="8.6106" y2="0.3556" width="0.254" layer="51"/>
<wire x1="11.7856" y1="-1.6002" x2="13.589" y2="0.3556" width="0.254" layer="51"/>
<wire x1="16.7894" y1="-1.651" x2="18.796" y2="0.3556" width="0.254" layer="51"/>
<wire x1="21.9456" y1="-1.6764" x2="23.8506" y2="0.3556" width="0.254" layer="51"/>
<wire x1="27.0256" y1="-1.6002" x2="28.829" y2="0.3556" width="0.254" layer="51"/>
<wire x1="-30.48" y1="-4.826" x2="30.48" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="30.48" y1="4.445" x2="30.48" y2="4.191" width="0.1524" layer="21"/>
<wire x1="30.48" y1="4.445" x2="15.24" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-30.48" y1="-4.826" x2="-30.48" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-30.48" y1="-2.413" x2="-28.829" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-28.829" y1="-2.413" x2="-27.051" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-27.051" y1="-2.413" x2="-23.749" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-30.48" y1="-2.413" x2="-30.48" y2="4.191" width="0.1524" layer="21"/>
<wire x1="30.48" y1="4.191" x2="-30.48" y2="4.191" width="0.1524" layer="21"/>
<wire x1="30.48" y1="4.191" x2="30.48" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="30.48" y1="-2.413" x2="30.48" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-30.48" y1="4.191" x2="-30.48" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="4.445" x2="-15.24" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="4.445" x2="-30.48" y2="4.445" width="0.1524" layer="21"/>
<wire x1="0" y1="4.445" x2="0" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="0" y1="4.445" x2="-15.24" y2="4.445" width="0.1524" layer="21"/>
<wire x1="15.24" y1="4.445" x2="15.24" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="15.24" y1="4.445" x2="0" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-23.749" y1="-2.413" x2="-21.971" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-16.891" y1="-2.413" x2="-15.24" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-2.413" x2="-13.589" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-21.971" y1="-2.413" x2="-18.669" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-18.669" y1="-2.413" x2="-16.891" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-13.589" y1="-2.413" x2="-11.811" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-11.811" y1="-2.413" x2="-8.509" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="-2.413" x2="-6.731" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-6.731" y1="-2.413" x2="-3.429" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.413" x2="-1.651" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-2.413" x2="0" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="0" y1="-2.413" x2="1.651" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-2.413" x2="3.429" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-2.413" x2="6.731" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-2.413" x2="8.509" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="8.509" y1="-2.413" x2="11.811" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="11.811" y1="-2.413" x2="13.589" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="13.589" y1="-2.413" x2="15.24" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-2.413" x2="16.891" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="16.891" y1="-2.413" x2="18.669" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="18.669" y1="-2.413" x2="21.971" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="21.971" y1="-2.413" x2="23.749" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="23.749" y1="-2.413" x2="27.051" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="27.051" y1="-2.413" x2="28.829" y2="-2.413" width="0.1524" layer="51"/>
<wire x1="28.829" y1="-2.413" x2="30.48" y2="-2.413" width="0.1524" layer="21"/>
<circle x="-27.94" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-17.78" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-27.94" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="-17.78" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="-22.86" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-22.86" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="-12.7" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-2.54" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-12.7" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="-2.54" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="-7.62" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-7.62" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.54" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="12.7" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="2.54" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="12.7" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="7.62" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="7.62" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="17.78" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="27.94" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="17.78" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="27.94" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<circle x="22.86" y="-0.635" radius="1.4986" width="0.1524" layer="51"/>
<circle x="22.86" y="2.8448" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-27.94" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="2" x="-22.86" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="3" x="-17.78" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="4" x="-12.7" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="5" x="-7.62" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="6" x="-2.54" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="7" x="2.54" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="9" x="12.7" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="10" x="17.78" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="11" x="22.86" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<pad name="12" x="27.94" y="-0.635" drill="1.1938" shape="long" rot="R90"/>
<text x="-27.051" y="1.27" size="0.9906" layer="51" ratio="10">1</text>
<text x="-21.9202" y="1.2192" size="0.9906" layer="51" ratio="10">2</text>
<text x="-16.8402" y="1.27" size="0.9906" layer="51" ratio="10">3</text>
<text x="-29.21" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-29.21" y="-6.858" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-11.811" y="1.27" size="0.9906" layer="51" ratio="10">4</text>
<text x="-6.6802" y="1.2192" size="0.9906" layer="51" ratio="10">5</text>
<text x="-1.6002" y="1.27" size="0.9906" layer="51" ratio="10">6</text>
<text x="3.429" y="1.27" size="0.9906" layer="51" ratio="10">7</text>
<text x="8.5598" y="1.2192" size="0.9906" layer="51" ratio="10">8</text>
<text x="13.6398" y="1.27" size="0.9906" layer="51" ratio="10">9</text>
<text x="18.034" y="1.27" size="0.9906" layer="51" ratio="10">10</text>
<text x="23.1648" y="1.2192" size="0.9906" layer="51" ratio="10">11</text>
<text x="28.2448" y="1.27" size="0.9906" layer="51" ratio="10">12</text>
</package>
</packages>
<symbols>
<symbol name="KL">
<wire x1="1.778" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<circle x="0.889" y="0" radius="0.898" width="0.254" layer="94"/>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="KL+V">
<wire x1="1.778" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<circle x="0.889" y="0" radius="0.898" width="0.254" layer="94"/>
<text x="0" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="W237-12P" prefix="X" uservalue="yes">
<description>&lt;b&gt;WAGO SREW CLAMP&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="0" addlevel="always"/>
<gate name="-2" symbol="KL" x="0" y="-5.08" addlevel="always"/>
<gate name="-3" symbol="KL" x="0" y="-10.16" addlevel="always"/>
<gate name="-4" symbol="KL" x="0" y="-15.24" addlevel="always"/>
<gate name="-5" symbol="KL" x="0" y="-20.32" addlevel="always"/>
<gate name="-6" symbol="KL" x="0" y="-25.4" addlevel="always"/>
<gate name="-7" symbol="KL" x="17.78" y="0" addlevel="always"/>
<gate name="-8" symbol="KL" x="17.78" y="-5.08" addlevel="always"/>
<gate name="-9" symbol="KL" x="17.78" y="-10.16" addlevel="always"/>
<gate name="-10" symbol="KL" x="17.78" y="-15.24" addlevel="always"/>
<gate name="-11" symbol="KL" x="17.78" y="-20.32" addlevel="always"/>
<gate name="-12" symbol="KL+V" x="17.78" y="-25.4" addlevel="always"/>
</gates>
<devices>
<device name="" package="W237-12P">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-10" pin="KL" pad="10"/>
<connect gate="-11" pin="KL" pad="11"/>
<connect gate="-12" pin="KL" pad="12"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
<connect gate="-4" pin="KL" pad="4"/>
<connect gate="-5" pin="KL" pad="5"/>
<connect gate="-6" pin="KL" pad="6"/>
<connect gate="-7" pin="KL" pad="7"/>
<connect gate="-8" pin="KL" pad="8"/>
<connect gate="-9" pin="KL" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="esp8266modules">
<packages>
<package name="ESP12ADAPTERBOARD">
<pad name="GND1" x="11.43" y="-13.97" drill="0.8"/>
<pad name="GPIO10" x="11.43" y="-11.43" drill="0.8"/>
<pad name="DO" x="11.43" y="-8.89" drill="0.8"/>
<pad name="CLK" x="11.43" y="-6.35" drill="0.8"/>
<pad name="GND" x="11.43" y="-3.81" drill="0.8"/>
<pad name="GPIO15" x="11.43" y="-1.27" drill="0.8"/>
<pad name="GPIO2" x="11.43" y="1.27" drill="0.8"/>
<pad name="GPIO0" x="11.43" y="3.81" drill="0.8"/>
<pad name="GPIO5" x="11.43" y="6.35" drill="0.8"/>
<pad name="GPIO4" x="11.43" y="8.89" drill="0.8"/>
<pad name="RXD" x="11.43" y="11.43" drill="0.8"/>
<pad name="TXD" x="11.43" y="13.97" drill="0.8"/>
<pad name="RST" x="-11.43" y="13.97" drill="0.8"/>
<pad name="ADC" x="-11.43" y="11.43" drill="0.8"/>
<pad name="EN" x="-11.43" y="8.89" drill="0.8"/>
<pad name="GPIO16" x="-11.43" y="6.35" drill="0.8"/>
<pad name="GPIO14" x="-11.43" y="3.81" drill="0.8"/>
<pad name="GPIO12" x="-11.43" y="1.27" drill="0.8"/>
<pad name="GPIO13" x="-11.43" y="-1.27" drill="0.8"/>
<pad name="VIN" x="-11.43" y="-3.81" drill="0.8"/>
<pad name="DI" x="-11.43" y="-6.35" drill="0.8"/>
<pad name="CS" x="-11.43" y="-8.89" drill="0.8"/>
<pad name="GPIO9" x="-11.43" y="-11.43" drill="0.8"/>
<pad name="3V3" x="-11.43" y="-13.97" drill="0.8"/>
<wire x1="-13.97" y1="-15.24" x2="13.97" y2="-15.24" width="0" layer="21"/>
<wire x1="13.97" y1="-15.24" x2="13.97" y2="16.51" width="0" layer="21"/>
<wire x1="13.97" y1="16.51" x2="-13.97" y2="16.51" width="0" layer="21"/>
<wire x1="-13.97" y1="16.51" x2="-13.97" y2="-15.24" width="0" layer="21"/>
<text x="-3.81" y="2.54" size="1.27" layer="21">ESP12
ADAPTER
BOARD</text>
</package>
</packages>
<symbols>
<symbol name="ESP12ADAPTERBOARD">
<wire x1="0" y1="0" x2="27.94" y2="0" width="0.254" layer="94"/>
<wire x1="27.94" y1="0" x2="27.94" y2="35.56" width="0.254" layer="94"/>
<wire x1="27.94" y1="35.56" x2="0" y2="35.56" width="0.254" layer="94"/>
<wire x1="0" y1="35.56" x2="0" y2="0" width="0.254" layer="94"/>
<pin name="TXD" x="30.48" y="33.02" length="middle" rot="R180"/>
<pin name="RXD" x="30.48" y="30.48" length="middle" rot="R180"/>
<pin name="GPIO4" x="30.48" y="27.94" length="middle" rot="R180"/>
<pin name="GPIO5" x="30.48" y="25.4" length="middle" rot="R180"/>
<pin name="GPIO0" x="30.48" y="22.86" length="middle" rot="R180"/>
<pin name="GPIO2" x="30.48" y="20.32" length="middle" rot="R180"/>
<pin name="GPIO15" x="30.48" y="17.78" length="middle" rot="R180"/>
<pin name="CLK" x="30.48" y="12.7" length="middle" rot="R180"/>
<pin name="DO" x="30.48" y="10.16" length="middle" rot="R180"/>
<pin name="GPIO10" x="30.48" y="7.62" length="middle" rot="R180"/>
<pin name="GND" x="30.48" y="5.08" length="middle" rot="R180"/>
<pin name="RST" x="-2.54" y="33.02" length="middle"/>
<pin name="ADC" x="-2.54" y="30.48" length="middle"/>
<pin name="EN" x="-2.54" y="27.94" length="middle"/>
<pin name="GPIO16" x="-2.54" y="25.4" length="middle"/>
<pin name="GPIO14" x="-2.54" y="22.86" length="middle"/>
<pin name="GPIO12" x="-2.54" y="20.32" length="middle"/>
<pin name="GPIO13" x="-2.54" y="17.78" length="middle"/>
<pin name="VIN" x="-2.54" y="15.24" length="middle"/>
<pin name="CS" x="-2.54" y="12.7" length="middle"/>
<pin name="DI" x="-2.54" y="10.16" length="middle"/>
<pin name="GPIO9" x="-2.54" y="7.62" length="middle"/>
<pin name="3V3" x="-2.54" y="5.08" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP12ADAPTERBOARD">
<gates>
<gate name="G$1" symbol="ESP12ADAPTERBOARD" x="-15.24" y="-17.78"/>
</gates>
<devices>
<device name="" package="ESP12ADAPTERBOARD">
<connects>
<connect gate="G$1" pin="3V3" pad="3V3"/>
<connect gate="G$1" pin="ADC" pad="ADC"/>
<connect gate="G$1" pin="CLK" pad="CLK"/>
<connect gate="G$1" pin="CS" pad="CS"/>
<connect gate="G$1" pin="DI" pad="DI"/>
<connect gate="G$1" pin="DO" pad="DO"/>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="GND" pad="GND GND1"/>
<connect gate="G$1" pin="GPIO0" pad="GPIO0"/>
<connect gate="G$1" pin="GPIO10" pad="GPIO10"/>
<connect gate="G$1" pin="GPIO12" pad="GPIO12"/>
<connect gate="G$1" pin="GPIO13" pad="GPIO13"/>
<connect gate="G$1" pin="GPIO14" pad="GPIO14"/>
<connect gate="G$1" pin="GPIO15" pad="GPIO15"/>
<connect gate="G$1" pin="GPIO16" pad="GPIO16"/>
<connect gate="G$1" pin="GPIO2" pad="GPIO2"/>
<connect gate="G$1" pin="GPIO4" pad="GPIO4"/>
<connect gate="G$1" pin="GPIO5" pad="GPIO5"/>
<connect gate="G$1" pin="GPIO9" pad="GPIO9"/>
<connect gate="G$1" pin="RST" pad="RST"/>
<connect gate="G$1" pin="RXD" pad="RXD"/>
<connect gate="G$1" pin="TXD" pad="TXD"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="uln-udn">
<description>&lt;b&gt;Driver Arrays&lt;/b&gt;&lt;p&gt;
ULN and UDN Series&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL18">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="11.43" y1="2.921" x2="-11.43" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-2.921" x2="11.43" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="11.43" y1="2.921" x2="11.43" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="2.921" x2="-11.43" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-2.921" x2="-11.43" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="1.016" x2="-11.43" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-10.16" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="10.16" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="10.16" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="-10.16" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-11.684" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-9.525" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="2801A">
<wire x1="-7.62" y1="12.7" x2="7.62" y2="12.7" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="7.62" y2="12.7" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="-7.62" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="12.7" x2="-7.62" y2="-12.7" width="0.4064" layer="94"/>
<text x="-7.62" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I1" x="-12.7" y="10.16" length="middle" direction="in"/>
<pin name="I2" x="-12.7" y="7.62" length="middle" direction="in"/>
<pin name="I3" x="-12.7" y="5.08" length="middle" direction="in"/>
<pin name="I4" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="I5" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="I6" x="-12.7" y="-2.54" length="middle" direction="in"/>
<pin name="I7" x="-12.7" y="-5.08" length="middle" direction="in"/>
<pin name="I8" x="-12.7" y="-7.62" length="middle" direction="in"/>
<pin name="O8" x="12.7" y="-7.62" length="middle" direction="oc" rot="R180"/>
<pin name="O1" x="12.7" y="10.16" length="middle" direction="oc" rot="R180"/>
<pin name="O2" x="12.7" y="7.62" length="middle" direction="oc" rot="R180"/>
<pin name="O3" x="12.7" y="5.08" length="middle" direction="oc" rot="R180"/>
<pin name="O4" x="12.7" y="2.54" length="middle" direction="oc" rot="R180"/>
<pin name="O5" x="12.7" y="0" length="middle" direction="oc" rot="R180"/>
<pin name="O6" x="12.7" y="-2.54" length="middle" direction="oc" rot="R180"/>
<pin name="O7" x="12.7" y="-5.08" length="middle" direction="oc" rot="R180"/>
<pin name="CD+" x="12.7" y="-10.16" length="middle" direction="pas" rot="R180"/>
<pin name="GND" x="-12.7" y="-10.16" length="middle" direction="pwr"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ULN2803A" prefix="IC" uservalue="yes">
<description>&lt;b&gt;DRIVER ARRAY&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="2801A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL18">
<connects>
<connect gate="G$1" pin="CD+" pad="10"/>
<connect gate="G$1" pin="GND" pad="9"/>
<connect gate="G$1" pin="I1" pad="1"/>
<connect gate="G$1" pin="I2" pad="2"/>
<connect gate="G$1" pin="I3" pad="3"/>
<connect gate="G$1" pin="I4" pad="4"/>
<connect gate="G$1" pin="I5" pad="5"/>
<connect gate="G$1" pin="I6" pad="6"/>
<connect gate="G$1" pin="I7" pad="7"/>
<connect gate="G$1" pin="I8" pad="8"/>
<connect gate="G$1" pin="O1" pad="18"/>
<connect gate="G$1" pin="O2" pad="17"/>
<connect gate="G$1" pin="O3" pad="16"/>
<connect gate="G$1" pin="O4" pad="15"/>
<connect gate="G$1" pin="O5" pad="14"/>
<connect gate="G$1" pin="O6" pad="13"/>
<connect gate="G$1" pin="O7" pad="12"/>
<connect gate="G$1" pin="O8" pad="11"/>
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
<part name="X1" library="con-wago-508" deviceset="W237-12P" device=""/>
<part name="U$1" library="esp8266modules" deviceset="ESP12ADAPTERBOARD" device=""/>
<part name="IC1" library="uln-udn" deviceset="ULN2803A" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="-1" x="10.16" y="-5.08" rot="R90"/>
<instance part="X1" gate="-2" x="15.24" y="-5.08" rot="R90"/>
<instance part="X1" gate="-3" x="20.32" y="-5.08" rot="R90"/>
<instance part="X1" gate="-4" x="25.4" y="-5.08" rot="R90"/>
<instance part="X1" gate="-5" x="30.48" y="-5.08" rot="R90"/>
<instance part="X1" gate="-6" x="35.56" y="-5.08" rot="R90"/>
<instance part="X1" gate="-7" x="40.64" y="-5.08" rot="R90"/>
<instance part="X1" gate="-8" x="45.72" y="-5.08" rot="R90"/>
<instance part="X1" gate="-9" x="50.8" y="-5.08" rot="R90"/>
<instance part="X1" gate="-10" x="55.88" y="-5.08" rot="R90"/>
<instance part="X1" gate="-11" x="60.96" y="-5.08" rot="R90"/>
<instance part="X1" gate="-12" x="66.04" y="-5.08" smashed="yes" rot="R90">
<attribute name="VALUE" x="63.5" y="-5.08" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="65.151" y="-6.35" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="U$1" gate="G$1" x="7.62" y="45.72"/>
<instance part="IC1" gate="G$1" x="78.74" y="66.04"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<pinref part="IC1" gate="G$1" pin="GND"/>
<wire x1="38.1" y1="43.18" x2="38.1" y2="50.8" width="0.1524" layer="91"/>
<wire x1="66.04" y1="55.88" x2="66.04" y2="43.18" width="0.1524" layer="91"/>
<wire x1="66.04" y1="43.18" x2="38.1" y2="43.18" width="0.1524" layer="91"/>
<wire x1="10.16" y1="43.18" x2="38.1" y2="43.18" width="0.1524" layer="91"/>
<junction x="38.1" y="43.18"/>
<pinref part="X1" gate="-1" pin="KL"/>
<wire x1="10.16" y1="43.18" x2="10.16" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GPIO12"/>
<wire x1="5.08" y1="66.04" x2="-5.08" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="66.04" x2="-5.08" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="93.98" x2="60.96" y2="93.98" width="0.1524" layer="91"/>
<wire x1="60.96" y1="93.98" x2="60.96" y2="71.12" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="I3"/>
<wire x1="60.96" y1="71.12" x2="66.04" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="O8"/>
<wire x1="91.44" y1="58.42" x2="93.98" y2="58.42" width="0.1524" layer="91"/>
<wire x1="93.98" y1="58.42" x2="93.98" y2="35.56" width="0.1524" layer="91"/>
<pinref part="X1" gate="-5" pin="KL"/>
<wire x1="93.98" y1="35.56" x2="30.48" y2="35.56" width="0.1524" layer="91"/>
<wire x1="30.48" y1="35.56" x2="30.48" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="O7"/>
<wire x1="91.44" y1="60.96" x2="96.52" y2="60.96" width="0.1524" layer="91"/>
<wire x1="96.52" y1="60.96" x2="96.52" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X1" gate="-6" pin="KL"/>
<wire x1="96.52" y1="33.02" x2="35.56" y2="33.02" width="0.1524" layer="91"/>
<wire x1="35.56" y1="33.02" x2="35.56" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="O6"/>
<wire x1="91.44" y1="63.5" x2="99.06" y2="63.5" width="0.1524" layer="91"/>
<wire x1="99.06" y1="63.5" x2="99.06" y2="30.48" width="0.1524" layer="91"/>
<pinref part="X1" gate="-7" pin="KL"/>
<wire x1="99.06" y1="30.48" x2="40.64" y2="30.48" width="0.1524" layer="91"/>
<wire x1="40.64" y1="30.48" x2="40.64" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="O5"/>
<wire x1="91.44" y1="66.04" x2="101.6" y2="66.04" width="0.1524" layer="91"/>
<wire x1="101.6" y1="66.04" x2="101.6" y2="27.94" width="0.1524" layer="91"/>
<pinref part="X1" gate="-8" pin="KL"/>
<wire x1="101.6" y1="27.94" x2="45.72" y2="27.94" width="0.1524" layer="91"/>
<wire x1="45.72" y1="27.94" x2="45.72" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="O4"/>
<wire x1="91.44" y1="68.58" x2="104.14" y2="68.58" width="0.1524" layer="91"/>
<wire x1="104.14" y1="68.58" x2="104.14" y2="25.4" width="0.1524" layer="91"/>
<pinref part="X1" gate="-9" pin="KL"/>
<wire x1="104.14" y1="25.4" x2="50.8" y2="25.4" width="0.1524" layer="91"/>
<wire x1="50.8" y1="25.4" x2="50.8" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="O3"/>
<wire x1="91.44" y1="71.12" x2="106.68" y2="71.12" width="0.1524" layer="91"/>
<wire x1="106.68" y1="71.12" x2="106.68" y2="22.86" width="0.1524" layer="91"/>
<pinref part="X1" gate="-10" pin="KL"/>
<wire x1="106.68" y1="22.86" x2="55.88" y2="22.86" width="0.1524" layer="91"/>
<wire x1="55.88" y1="22.86" x2="55.88" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="X1" gate="-2" pin="KL"/>
<pinref part="X1" gate="-4" pin="KL"/>
<wire x1="25.4" y1="25.4" x2="25.4" y2="0" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="CD+"/>
<wire x1="91.44" y1="40.64" x2="91.44" y2="55.88" width="0.1524" layer="91"/>
<wire x1="91.44" y1="40.64" x2="15.24" y2="40.64" width="0.1524" layer="91"/>
<wire x1="15.24" y1="40.64" x2="15.24" y2="25.4" width="0.1524" layer="91"/>
<wire x1="15.24" y1="25.4" x2="25.4" y2="25.4" width="0.1524" layer="91"/>
<junction x="15.24" y="25.4"/>
<wire x1="15.24" y1="25.4" x2="15.24" y2="0" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VIN"/>
<wire x1="5.08" y1="60.96" x2="-2.54" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="60.96" x2="-2.54" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="40.64" x2="15.24" y2="40.64" width="0.1524" layer="91"/>
<junction x="15.24" y="40.64"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="O2"/>
<wire x1="91.44" y1="73.66" x2="109.22" y2="73.66" width="0.1524" layer="91"/>
<wire x1="109.22" y1="73.66" x2="109.22" y2="20.32" width="0.1524" layer="91"/>
<pinref part="X1" gate="-11" pin="KL"/>
<wire x1="109.22" y1="20.32" x2="60.96" y2="20.32" width="0.1524" layer="91"/>
<wire x1="60.96" y1="20.32" x2="60.96" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="O1"/>
<wire x1="91.44" y1="76.2" x2="111.76" y2="76.2" width="0.1524" layer="91"/>
<wire x1="111.76" y1="76.2" x2="111.76" y2="17.78" width="0.1524" layer="91"/>
<pinref part="X1" gate="-12" pin="KL"/>
<wire x1="111.76" y1="17.78" x2="66.04" y2="17.78" width="0.1524" layer="91"/>
<wire x1="66.04" y1="17.78" x2="66.04" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GPIO16"/>
<wire x1="5.08" y1="71.12" x2="0" y2="71.12" width="0.1524" layer="91"/>
<wire x1="0" y1="71.12" x2="0" y2="88.9" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="I1"/>
<wire x1="0" y1="88.9" x2="66.04" y2="88.9" width="0.1524" layer="91"/>
<wire x1="66.04" y1="88.9" x2="66.04" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GPIO14"/>
<wire x1="5.08" y1="68.58" x2="-2.54" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="68.58" x2="-2.54" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="91.44" x2="63.5" y2="91.44" width="0.1524" layer="91"/>
<wire x1="63.5" y1="91.44" x2="63.5" y2="73.66" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="I2"/>
<wire x1="63.5" y1="73.66" x2="66.04" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GPIO13"/>
<wire x1="5.08" y1="63.5" x2="-7.62" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="63.5" x2="-7.62" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="96.52" x2="58.42" y2="96.52" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="I4"/>
<wire x1="66.04" y1="68.58" x2="58.42" y2="68.58" width="0.1524" layer="91"/>
<wire x1="58.42" y1="96.52" x2="58.42" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GPIO10"/>
<wire x1="38.1" y1="53.34" x2="63.5" y2="53.34" width="0.1524" layer="91"/>
<wire x1="63.5" y1="53.34" x2="63.5" y2="58.42" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="I8"/>
<wire x1="63.5" y1="58.42" x2="66.04" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="I7"/>
<wire x1="66.04" y1="60.96" x2="40.64" y2="60.96" width="0.1524" layer="91"/>
<wire x1="40.64" y1="60.96" x2="40.64" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GPIO15"/>
<wire x1="40.64" y1="63.5" x2="38.1" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="I5"/>
<wire x1="66.04" y1="66.04" x2="55.88" y2="66.04" width="0.1524" layer="91"/>
<wire x1="55.88" y1="66.04" x2="55.88" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GPIO4"/>
<wire x1="55.88" y1="73.66" x2="38.1" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="I6"/>
<wire x1="66.04" y1="63.5" x2="50.8" y2="63.5" width="0.1524" layer="91"/>
<wire x1="50.8" y1="63.5" x2="50.8" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GPIO5"/>
<wire x1="50.8" y1="71.12" x2="38.1" y2="71.12" width="0.1524" layer="91"/>
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
