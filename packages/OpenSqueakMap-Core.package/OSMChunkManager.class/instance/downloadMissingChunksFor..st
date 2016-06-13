as yet unclassified
downloadMissingChunksFor: anIndexCollection

	^ (anIndexCollection reject: [:i | self chunks includesKey: i])
		collect: [:x | self addChunkWith: x].