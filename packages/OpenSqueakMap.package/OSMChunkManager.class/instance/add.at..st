downloading
add: aChunk at: aZoomLevel
	
	aChunk downloadWithConfig: self downloadConfiguration at: aZoomLevel.
	self save: aChunk.
	^ aChunk