events
didChangeOn: aViewport

	| newChunks |	
	aViewport chunks do: [:chunk | chunk moveToPositionIn: aViewport].
	newChunks := self downloadMissingChunksIn: aViewport.
	newChunks do: [:chunk |
		aViewport addChunk: chunk.
		chunk moveToPositionIn: aViewport].
	self applyRenderConfiguration.
	self chunks do: [:chunk | chunk render].