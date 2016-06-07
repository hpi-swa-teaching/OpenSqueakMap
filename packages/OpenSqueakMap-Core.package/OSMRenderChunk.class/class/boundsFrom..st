as yet unclassified
boundsFrom: aPoint

	| topLeft |
	topLeft := aPoint * OSMChunkManager chunkSize.
	topLeft  := topLeft translateBy: -180@(-90).
	^ Rectangle origin: topLeft corner: topLeft + OSMChunkManager chunkSize.