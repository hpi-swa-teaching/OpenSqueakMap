*OpenSqueakMap
pixelAsCoordAt: aZoomLevel
	"optimizable by precalculating constant factors"

	|dx dy ycos|	
	dy := (self worldCircumference * self y ) / ((2 raisedTo: aZoomLevel + 8) * 110574).
	ycos := dy degreesToRadians cos.
	ycos = 0
		ifTrue: [dx := 0]
		ifFalse: [dx := (self worldCircumference * self x ) / ((2 raisedTo: aZoomLevel + 8) * 111320 * dy degreesToRadians cos)].
	^ dx@dy negated.