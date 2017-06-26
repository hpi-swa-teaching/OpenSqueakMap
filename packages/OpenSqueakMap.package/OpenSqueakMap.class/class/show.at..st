instance creation
show: aPoint at: aZoomLevel

	| osm |
	osm := self basicNew.
	^ osm
		chunkManager: OSMChunkManager new;
		viewport: (OSMViewport center: aPoint zoom: aZoomLevel chunkManager: osm chunkManager);
		initialize;
		yourself.