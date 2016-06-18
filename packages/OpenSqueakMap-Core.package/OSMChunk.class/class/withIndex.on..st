as yet unclassified
withIndex: aPoint on: aChunkManager

	^ self new
		coordBounds: (self boundsFrom: aPoint);
		chunkManager: aChunkManager.