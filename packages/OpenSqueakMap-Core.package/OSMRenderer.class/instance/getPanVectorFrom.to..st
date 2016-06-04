rendering
getPanVectorFrom: aSource to: aDestination

 	|transSource transDestination| 
	transSource := self translate: self offset topLeft + aSource.
	transDestination := self translate: self offset topLeft + aDestination.
	^ (transSource toGeoCoordsAt: self zoomLevel) - (transDestination toGeoCoordsAt: self zoomLevel).