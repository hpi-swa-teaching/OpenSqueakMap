as yet unclassified
downloadedChunksFor: anIndexCollection
	^ (anIndexCollection collect: [:x | chunks at: x ifAbsent: [nil]])
		reject: [:x | x = nil]