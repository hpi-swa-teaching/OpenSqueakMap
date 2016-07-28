*OpenSqueakMap
toChunkIndexSpace
	"Transform a rectangle's points from global coordinates to OSM chunk indices"
	
	^ ((self translateBy: 180@90) / OSMChunkManager chunkSize) floor.