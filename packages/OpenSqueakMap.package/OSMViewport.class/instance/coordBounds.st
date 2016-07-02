initialize-release
coordBounds

	| topLeft |
	topLeft := self topLeftCoord coordAsPixelAt: self zoomLevel.
	^ (Rectangle 
		origin: (topLeft pixelAsCoordAt: self zoomLevel)  
		corner: ((topLeft + self extent) pixelAsCoordAt: self zoomLevel)).