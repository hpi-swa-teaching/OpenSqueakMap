downloading
save: aChunk

	self class cachedChunks at: aChunk index put: aChunk.
	self updateChunks.
	(self class cachedChunks size > self class maxCacheSize) 
		ifTrue: [self removeCachedChunk: aChunk].