as yet unclassified
boundsFrom: aPoint

	| topLeft |
	topLeft := aPoint * OSMChunkManager chunkSize.
	^ Rectangle origin: topLeft corner: topLeft + OSMChunkManager chunkSize.