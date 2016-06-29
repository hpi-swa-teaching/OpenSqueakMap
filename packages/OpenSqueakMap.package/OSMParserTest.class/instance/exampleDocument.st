as yet unclassified
exampleDocument
	^ '<?xml version="1.0" encoding="UTF-8"?>
<osm version="0.6" generator="CGImap 0.4.0 (23459 thorn-02.openstreetmap.org)" copyright="OpenStreetMap and contributors" attribution="http://www.openstreetmap.org/copyright" license="http://opendatacommons.org/licenses/odbl/1-0/">
 <bounds minlat="52.3866000" minlon="13.1153000" maxlat="52.3968000" maxlon="13.1387000"/>
 <node id="27127283" visible="true" version="2" changeset="2683200" timestamp="2009-09-29T23:54:47Z" user="bost71" uid="171135" lat="52.4023071" lon="13.1140175"/>
 <node id="318693749" visible="true" version="3" changeset="27929028" timestamp="2015-01-05T10:29:00Z" user="bahnpirat" uid="13203" lat="52.3989957" lon="13.1414180">
  <tag k="railway" v="switch"/>
  <tag k="source" v="Bing"/>
 </node>
 <way id="51763472" visible="true" version="5" changeset="6780880" timestamp="2010-12-27T18:50:41Z" user="mastercarl" uid="8457">
  <nd ref="27127283"/>
  <nd ref="318693749"/>
  <tag k="highway" v="footway"/>
 </way>
 <relation id="16349" visible="true" version="372" changeset="36059354" timestamp="2015-12-20T06:29:46Z" user="atpl_pilot" uid="881429">
  <member type="node" ref="27127283" role="state"/>
  <member type="way" ref="51763472" role="borough"/>
  <member type="node" ref="12345" role="state"/>
  <member type="way" ref="123456" role="borough"/>
  <member type="relation" ref="1234567" role="borough"/>
  <tag k="addr:city" v="Berlin"/>
  <tag k="addr:country" v="DE"/>
 </relation>
 </osm>'