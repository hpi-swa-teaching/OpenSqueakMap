as yet unclassified
topLeft: aPoint zoom: anInteger chunkManager: aChunkManager

	^self new
		zoomLevel: anInteger;
		setInitialOffsetFrom: aPoint;
		chunkManager: aChunkManager;
		yourself