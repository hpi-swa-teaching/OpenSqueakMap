rendering
getPanVectorFrom: aSource to: aDestination

 	|transSource transDestination| 
	transSource := (self coordBounds topLeft + aSource) coordsToPixelsAt: self zoomLevel.
	transDestination := (self coordBounds topLeft + aDestination) coordsToPixelsAt: self zoomLevel.
	^ (transSource toGeoCoordsAt: self zoomLevel) - (transDestination toGeoCoordsAt: self zoomLevel).