accessing
moveToPositionIn: aViewport

	self positionInViewport:
		(self coordBounds topLeft coordAsPixelAt: aViewport zoomLevel) -
		(aViewport topLeftCoord coordAsPixelAt: aViewport zoomLevel).