downloading
add: aChunk at: aZoomLevel
	
	aChunk downloadWithConfig: self downloadConfiguration at: aZoomLevel.
	self processDataSetOf: aChunk.
	self save: aChunk.
	^ aChunk