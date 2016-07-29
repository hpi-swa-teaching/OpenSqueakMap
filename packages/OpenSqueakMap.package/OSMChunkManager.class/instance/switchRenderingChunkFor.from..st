chunk assignment
switchRenderingChunkFor: aWayMorph from: oldChunk

	| newChunk |
	newChunk := self backupChunks anyOne.
	self backupChunks remove: newChunk.
	self for: aWayMorph setRenderingChunk: newChunk.
	newChunk addWayMorph: (oldChunk wayMorphs at: aWayMorph).