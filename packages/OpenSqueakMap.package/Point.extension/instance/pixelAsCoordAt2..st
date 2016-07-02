*OpenSqueakMap
pixelAsCoordAt2: aZoomLevel

	| dx dy |
	dy := (2 * ((Float e raisedTo: (Float pi - (Float pi * self y /(128 * (2 raisedTo: aZoomLevel))))) arcTan)) - (Float pi / 2).
	dx := (Float pi * self x / (128 * (2 raisedTo: aZoomLevel))) - dy.
	^ (dx radiansToDegrees) @ (dy radiansToDegrees).