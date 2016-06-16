initialize-release
setInitialOffsetFrom: aPoint 

	| topLeft |
	topLeft := aPoint coordsToPixelsAt: self zoomLevel.
	self coordBounds: (Rectangle 
		origin: (topLeft toGeoCoordsAt: self zoomLevel)  
		corner: ((topLeft + self extent) toGeoCoordsAt: self zoomLevel)).