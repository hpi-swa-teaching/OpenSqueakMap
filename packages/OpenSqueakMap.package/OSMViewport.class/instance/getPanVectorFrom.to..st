rendering
getPanVectorFrom: aSource to: aDestination

	| topLeftPixel absoluteSource absoluteDestination |
	topLeftPixel := self topLeftCoord coordAsPixelAt: self zoomLevel.
	absoluteSource := topLeftPixel + aSource.
	absoluteDestination := topLeftPixel + aDestination.
	^ (absoluteSource pixelAsCoordAt: self zoomLevel) - (absoluteDestination pixelAsCoordAt: self zoomLevel).