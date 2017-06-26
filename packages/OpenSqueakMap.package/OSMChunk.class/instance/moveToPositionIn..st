accessing
moveToPositionIn: aViewport

	self positionInViewport:
		(self coordBounds center coordAsPixelAt: aViewport zoomLevel) -
		(aViewport centerCoord coordAsPixelAt: aViewport zoomLevel).