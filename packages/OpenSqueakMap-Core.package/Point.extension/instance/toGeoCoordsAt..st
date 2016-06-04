*OpenSqueakMap-Core
toGeoCoordsAt: aZoomLevel
	"optimizable by precalculating constant factors"

	|dx dy|	
	dy := (self worldCircumference * self y ) / ((2 raisedTo: aZoomLevel + 8) * 110574).
	dx := (self worldCircumference * self y ) / ((2 raisedTo: aZoomLevel + 8) * 111320 * dy degreesToRadians cos).
	^ dx@dy negated.