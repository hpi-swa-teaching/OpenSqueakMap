chunk assignment
removeCachedChunk: aChunk

	self class cachedChunks removeKey: (self detectMaxInCache: aChunk).