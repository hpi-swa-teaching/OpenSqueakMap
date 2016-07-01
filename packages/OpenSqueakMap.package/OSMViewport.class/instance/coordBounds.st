initialize-release
coordBounds

	| topLeft |
	topLeft := self topLeftCoord coordsToPixelsAt: self zoomLevel.
	^ (Rectangle 
		origin: (topLeft toGeoCoordsAt: self zoomLevel)  
		corner: ((topLeft + self extent) toGeoCoordsAt: self zoomLevel)).