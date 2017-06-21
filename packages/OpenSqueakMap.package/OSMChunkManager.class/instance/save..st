downloading
save: aChunk

	self class chunks at: aChunk index put: aChunk.
	self updateCachedChunks.