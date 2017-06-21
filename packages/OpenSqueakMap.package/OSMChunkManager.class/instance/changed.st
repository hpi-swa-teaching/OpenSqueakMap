events
changed

	| newChunks |
	newChunks := self downloadMissingChunksIn.  
	self applyRenderConfiguration.  
	newChunks do: [:chunk | self viewport addChunk: chunk].
	self viewport chunks do: [:chunk | chunk moveToPositionIn: self viewport].
	self class chunks do: [:chunk | chunk render].