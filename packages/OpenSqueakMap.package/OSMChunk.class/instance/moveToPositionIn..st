accessing
moveToPositionIn: aViewport

	| zoom |
	zoom := aViewport zoomLevel.
	self position: 
		aViewport bounds topLeft + 
		(self coordBounds topLeft coordAsPixelAt: zoom) -
		(aViewport coordBounds topLeft coordAsPixelAt: zoom).