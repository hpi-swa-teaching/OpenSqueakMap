rendering
getPanVectorFrom: aSource to: aDestination

	| topLeftPixel absoluteSource absoluteDestination |
	topLeftPixel := self topLeftCoord coordsToPixelsAt: self zoomLevel.
	absoluteSource := topLeftPixel + aSource.
	absoluteDestination := topLeftPixel + aDestination.
	^ (absoluteSource toGeoCoordsAt: self zoomLevel) - (absoluteDestination toGeoCoordsAt: self zoomLevel).