initialize-release
setInitialOffsetFrom: aRectangle 

	| topLeft |
	topLeft := aRectangle topLeft coordsToPixelsAt: self zoomLevel.
	self offset: (Rectangle origin: topLeft  corner: topLeft + self extent).