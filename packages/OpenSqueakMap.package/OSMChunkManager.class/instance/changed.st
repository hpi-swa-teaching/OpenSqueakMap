events
changed

	| newChunks |
	newChunks := self downloadMissingChunks.
	self applyRenderConfiguration.
	self cachedChunks do: [:chunk | self viewport addChunk: chunk].
	self viewport chunks do: [:chunk | chunk moveToPositionIn: self viewport].
	self cachedChunks do: [:chunk | chunk render].