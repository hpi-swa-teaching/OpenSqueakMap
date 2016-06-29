as yet unclassified
didChangeOn: aViewport

	| indices newChunks |
	self progressBar center: aViewport center.
	aViewport chunks do: [:chunk | chunk moveToPositionIn: aViewport].
	indices := self chunkIndicesIn: aViewport coordBounds.
	newChunks := self downloadMissingChunksFor: indices.
	newChunks do: [:chunk |
		aViewport addChunk: chunk.
		chunk moveToPositionIn: aViewport].
	self applyConfiguration.
	self chunks do: [:chunk | chunk render].