as yet unclassified
topLeft: aPoint zoom: anInteger chunkManager: aChunkManager

	^self new
		zoomLevel: anInteger;
		calcCoordBoundsFrom: aPoint;
		chunkManager: aChunkManager;
		yourself