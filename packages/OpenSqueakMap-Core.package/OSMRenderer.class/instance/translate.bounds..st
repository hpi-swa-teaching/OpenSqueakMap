rendering
translate: aGeoCoordinate bounds: aRectangle
	
	^self scaleFactor * (aGeoCoordinate - (aRectangle topLeft) * (1 @ -1))