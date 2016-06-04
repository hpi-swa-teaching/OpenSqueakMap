rendering
getPanVectorFrom: aSource to: aDestination

 	|transSource transDestination| 
	transSource := self translate: self offset topLeft + aSource.
	transDestination := self translate: self offset topLeft + aDestination.
	
	^ (self degreesFromPixels: transSource) - (self degreesFromPixels: transDestination).