rendering
translate: aGeoCoordinate bounds: aRectangle
	
	| scalingFactor |
	"scalingFactor := 2000 / aRectangle width.
	^scalingFactor * (aGeoCoordinate - aRectangle topLeft) * (1 @ -1) + (100@100)."
	scalingFactor := 20000.
	^scalingFactor * (aGeoCoordinate - (13.3675@52.5097)) * (1 @ -1) + (100@100).