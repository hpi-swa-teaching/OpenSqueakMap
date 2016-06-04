*OpenSqueakMap-Core
coordsToPixelsAt: aZoomLevel

	| px py |
	py := (self y * (2 raisedTo: aZoomLevel + 8) * 110574) / self worldCircumference.
	px := (self x * (2 raisedTo: aZoomLevel + 8) * 111320 * self y degreesToRadians cos) / self worldCircumference.
	^ px@py negated.