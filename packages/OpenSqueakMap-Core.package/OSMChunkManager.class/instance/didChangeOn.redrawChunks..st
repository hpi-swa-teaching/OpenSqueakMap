as yet unclassified
didChangeOn: aViewport redrawChunks: aBoolean

	| indices newChunks |
	indices := self chunkIndicesIn: aViewport coordBounds.
	newChunks := self downloadMissingChunksFor: indices.
	newChunks do: [:chunk | aViewport addChunk: chunk].
	aViewport chunks do: [:chunk | chunk moveToPositionIn: aViewport].
	self applyConfiguration.
	aBoolean 
		ifTrue: [self chunks do: [:chunk | chunk render]]
		ifFalse: [newChunks do: [:chunk | chunk render]].