rendering
getPanVectorFrom: aSource to: aDestination

	| coordTopLeft absoluteSource absoluteDestination |
	coordTopLeft := self coordBounds topLeft coordsToPixelsAt: self zoomLevel.
	absoluteSource := coordTopLeft + aSource.
	absoluteDestination := coordTopLeft + aDestination.
	^ (absoluteSource toGeoCoordsAt: self zoomLevel) - (absoluteDestination toGeoCoordsAt: self zoomLevel).