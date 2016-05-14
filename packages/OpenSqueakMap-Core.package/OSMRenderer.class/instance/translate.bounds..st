rendering
translate: aGeoCoordinate bounds: aRectangle
	
	| scalingFactor |
	scalingFactor := 2000 / aRectangle width.
	^scalingFactor * (aGeoCoordinate - aRectangle topLeft) * (1 @ -1) + (100@100).