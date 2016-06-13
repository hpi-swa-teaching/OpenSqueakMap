as yet unclassified
switchRenderingChunkFor: anId from: aChunk

	| newChunk |
	newChunk := self backupChunks anyOne.
	self backupChunks remove: newChunk.
	self renderingChunks at: anId put: newChunk.
	newChunk
		addWayMorph: (aChunk wayMorphs at: anId)
		at: anId.