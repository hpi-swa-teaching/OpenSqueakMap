as yet unclassified
missingChunksFor: anIndexCollection

	^ (anIndexCollection reject: [:i | self chunks includesKey: i])
		collect: [:x | OSMRenderChunk withIndex: x].