instance creation
withIndex: aPoint on: aChunkManager

	^ self new
		index: aPoint;
		coordBounds: (self boundsFrom: aPoint);
		chunkManager: aChunkManager.