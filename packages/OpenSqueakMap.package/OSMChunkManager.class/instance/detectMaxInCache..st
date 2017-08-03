chunk assignment
detectMaxInCache: aChunk

	^ (self class cachedChunks detectMax: [:chunk | 
		chunk index dist: aChunk index]) index.