as yet unclassified
downloadedChunksFor: anIndexCollection

	^ anIndexCollection select: [:index | self chunks includesKey: index]
		thenCollect: [:index | self chunks at: index]