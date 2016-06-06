rendering
getPanVectorFrom: aSource to: aDestination

 	|transSource transDestination| 
	transSource := (self offset topLeft + aSource) coordsToPixelsAt: self zoomLevel.
	transDestination := (self offset topLeft + aDestination) coordsToPixelsAt: self zoomLevel.
	^ (transSource toGeoCoordsAt: self zoomLevel) - (transDestination toGeoCoordsAt: self zoomLevel).