as yet unclassified
missingChunksFor: anIndexCollection

	^ (anIndexCollection reject: [:i | chunks includesKey: i]) collect: [:x | OSMRenderChunk new coordinate: nil]