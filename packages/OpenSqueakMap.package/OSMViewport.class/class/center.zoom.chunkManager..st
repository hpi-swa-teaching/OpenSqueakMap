instance creation
center: aPoint zoom: anInteger chunkManager: aChunkManager

	^ self new
		zoomLevel: anInteger;
		centerCoord: aPoint;
		chunkManager: aChunkManager;
		yourself.