as yet unclassified
didChangeOn: aViewport

	| indices newChunks |
	indices := self chunkIndicesIn: aViewport coordBounds.
	newChunks := self downloadMissingChunksFor: indices.
	newChunks do: [:chunk |
		aViewport addChunk: chunk].
	self applyConfiguration.
	aViewport chunks do: [:chunk | chunk moveToPositionIn: aViewport].
	newChunks do: [:chunk | chunk render].