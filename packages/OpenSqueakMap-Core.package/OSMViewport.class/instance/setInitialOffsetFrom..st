initialize-release
setInitialOffsetFrom: aRectangle 

	| topLeft |
	topLeft := aRectangle topLeft coordsToPixelsAt: self zoomLevel.
	self offset: (Rectangle 
		origin: (topLeft toGeoCoordsAt: self zoomLevel)  
		corner: ((topLeft + self extent) toGeoCoordsAt: self zoomLevel)).