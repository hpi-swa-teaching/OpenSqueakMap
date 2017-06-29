events
changed

	| newChunks |
	newChunks := self downloadMissingChunks.
	self applyRenderConfiguration.
	self chunks do: [:chunk | self viewport addChunk: chunk].
	self viewport chunks do: [:chunk | chunk moveToPositionIn: self viewport].
	self chunks do: [:chunk | chunk render].