as yet unclassified
missingChunksFor: anIndexCollection

	^ (anIndexCollection reject: [:i | chunks includesKey: i])
		collect: [:x | OSMRenderChunk withIndex: x].