geometry
boundsFrom: aPoint

	| topLeft |
	topLeft := aPoint * OSMChunkManager chunkSize.
	topLeft  := topLeft translateBy: -180@(-90).
	^ Rectangle 
		left: topLeft x
		right: (topLeft x + OSMChunkManager chunkSize x)
		top: (topLeft y + OSMChunkManager chunkSize y)
		bottom: topLeft y.