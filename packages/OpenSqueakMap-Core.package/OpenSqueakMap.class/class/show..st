as yet unclassified
show: aDataSet

	| osm |
	osm := self new
		renderer: (OSMRenderer on: aDataSet).
	osm addMapMorph: osm renderer render.
	^ osm.