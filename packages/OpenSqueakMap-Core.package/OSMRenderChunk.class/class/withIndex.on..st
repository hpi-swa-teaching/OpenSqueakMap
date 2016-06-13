as yet unclassified
withIndex: anInteger on: aChunkManager

	^ self new
		coordBounds: (self boundsFrom: anInteger);
		chunkManager: aChunkManager.