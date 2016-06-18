accessing
moveToPositionIn: aViewport

	| zoom |
	zoom := aViewport zoomLevel.
	self position: 
		aViewport bounds topLeft + 
		(self coordBounds topLeft coordsToPixelsAt: zoom) -
		(aViewport coordBounds topLeft coordsToPixelsAt: zoom).