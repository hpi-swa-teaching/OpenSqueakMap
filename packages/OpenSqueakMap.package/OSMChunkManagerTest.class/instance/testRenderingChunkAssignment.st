as yet unclassified
testRenderingChunkAssignment
	<timeout:60>
	
	| firstChunk secondChunk wayInBothChunks |
	firstChunk := OSMChunk withIndex: self firstChunkIndex on: self chunkManager.
	self chunkManager add: firstChunk at: self zoomLevel.
	secondChunk := OSMChunk withIndex: self secondChunkIndex on: self chunkManager.
	secondChunk downloadWithConfig: self chunkManager downloadConfiguration at: self zoomLevel.
	wayInBothChunks := self wayIn: firstChunk and: secondChunk.
	self assert: (self chunkManager renderingChunkFor: wayInBothChunks) equals: firstChunk.
	self assert: (self chunkManager backupChunksFor: wayInBothChunks) isEmpty.
	
	self chunkManager processDataSetOf: secondChunk.
	self assert: (self chunkManager renderingChunkFor: wayInBothChunks) equals: secondChunk.
	self assert: ((self chunkManager backupChunksFor: wayInBothChunks) includes: firstChunk).
	
	self chunkManager removeWayMorphsFrom: secondChunk.
	self assert: (self chunkManager renderingChunkFor: wayInBothChunks) equals: firstChunk.
	self assert: (self chunkManager backupChunksFor: wayInBothChunks) isEmpty.
	
	self chunkManager removeWayMorphsFrom: firstChunk.
	self assert: wayInBothChunks isNil.