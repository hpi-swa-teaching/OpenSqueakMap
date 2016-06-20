as yet unclassified
didChangeOn: aViewport

	| indices newChunks |
	indices := self chunkIndicesIn: aViewport coordBounds.
	newChunks := self downloadMissingChunksFor: indices.
	newChunks do: [:chunk | aViewport addChunk: chunk].
	aViewport chunks do: [:chunk | chunk moveToPositionIn: aViewport].
	self applyConfiguration.
	self chunks do: [:chunk | chunk render].