as yet unclassified
testRenderingChunkAssignment
	<timeout:60>
	| aZoomLevel firstChunk secondChunk wayInBothChunks |
	aZoomLevel := 17.
	firstChunk := OSMChunk withIndex: self firstChunkIndex on: self chunkManager.
	self chunkManager add: firstChunk at: aZoomLevel.
	secondChunk := OSMChunk withIndex: self secondChunkIndex on: self chunkManager.
	secondChunk downloadWithConfig: self chunkManager downloadConfiguration at: aZoomLevel.
	wayInBothChunks := self wayIn: firstChunk and: secondChunk.
	self assert: (self chunkManager renderingChunkFor: wayInBothChunks) equals: firstChunk.
	self assert: ((self chunkManager backupChunksFor: wayInBothChunks) size) equals: 0.
	
	self chunkManager processDataSetOf: secondChunk.
	self assert: (self chunkManager renderingChunkFor: wayInBothChunks) equals: secondChunk.
	self assert: ((self chunkManager backupChunksFor: wayInBothChunks) includes: firstChunk).