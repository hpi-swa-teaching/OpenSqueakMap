as yet unclassified
downloadedChunksFor: anIndexCollection
	^ (anIndexCollection collect: [:x | self chunks at: x ifAbsent: [nil]])
		reject: [:x | x = nil]