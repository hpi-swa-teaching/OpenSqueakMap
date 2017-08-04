running
testCache

	| chunkManager cacheSize |
	chunkManager := OSMChunkManager new.
	cacheSize := chunkManager class maxCacheSize.
	0 to: (cacheSize - 1) 
		do: [	:i | 
				chunkManager save:
					((OSMChunk withIndex: i@i on: chunkManager)
						dataSet: (OSMDataset empty);
						yourself)].		
	chunkManager save: 
		((OSMChunk withIndex: (cacheSize)@(cacheSize)  on: chunkManager)
			dataSet: (OSMDataset empty);
			yourself).
	
	self assert: chunkManager class cachedChunks size equals: cacheSize.
	self deny: (chunkManager class cachedChunks includesKey: 0@0).