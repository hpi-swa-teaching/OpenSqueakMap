as yet unclassified
didChangeOn: aViewport redrawChunks: aBoolean

	| indices newChunks |
	indices := self chunkIndicesIn: aViewport coordBounds.
	newChunks := self downloadMissingChunksFor: indices.
	newChunks keysAndValuesDo: [:index :chunk |
		aViewport addChunk: chunk].
	self applyConfiguration.
	aViewport chunks do: [:chunk | chunk moveToPositionIn: aViewport].
	aBoolean 
		ifTrue: [self chunks do: [:chunk | chunk render]]
		ifFalse: [newChunks do: [:chunk | chunk render]].