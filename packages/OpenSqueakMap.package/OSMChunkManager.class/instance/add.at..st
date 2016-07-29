downloading
add: aChunk at: aZoomLevel
	self save: aChunk.
	aChunk downloadWithConfig: self downloadConfiguration at: aZoomLevel.
	self processDataSetOf: aChunk.
	^ aChunk