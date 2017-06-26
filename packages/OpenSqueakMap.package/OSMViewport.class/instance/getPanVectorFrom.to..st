rendering
getPanVectorFrom: aSource to: aDestination

	| centerPixel absoluteSource absoluteDestination |
	centerPixel := self centerCoord coordAsPixelAt: self zoomLevel.
	absoluteSource := centerPixel + aSource.
	absoluteDestination := centerPixel + aDestination.
	^ (absoluteSource pixelAsCoordAt: self zoomLevel) - (absoluteDestination pixelAsCoordAt: self zoomLevel).