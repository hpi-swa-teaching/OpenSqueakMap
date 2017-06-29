downloading
save: aChunk

	self class cachedChunks at: aChunk index put: aChunk.
	self updateChunks.
	(self class cachedChunks size > self class maxCacheSize) 
		ifTrue: [self class cachedChunks removeKey: ((self class cachedChunks detectMax: [:chunk | chunk index dist: aChunk index]) index)].