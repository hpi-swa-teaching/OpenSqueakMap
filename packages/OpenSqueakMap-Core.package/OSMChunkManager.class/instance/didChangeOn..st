as yet unclassified
didChangeOn: aViewport

	| indices newChunks |
	indices := self chunkIndicesIn: aViewport coordBounds.
	newChunks := self downloadMissingChunksFor: indices.
	newChunks do: [:chunk | aViewport addChunk: chunk].
	aViewport chunks do: [:chunk | chunk moveToPositionIn: aViewport].
	self applyConfiguration.
	newChunks do: [:chunk | chunk render].