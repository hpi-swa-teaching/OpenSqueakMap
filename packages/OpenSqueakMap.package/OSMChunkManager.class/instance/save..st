downloading
save: aChunk
	"Add new chunk to cache, update active chunks and remove old chunk from cache, if cache reached maxCacheSize."

	self class cachedChunks at: aChunk index put: aChunk.
	self updateChunks.
	(self class cachedChunks size > self class maxCacheSize) 
		ifTrue: [self class cachedChunks removeKey: ((self class cachedChunks detectMax: [:chunk | chunk index dist: aChunk index]) index)].