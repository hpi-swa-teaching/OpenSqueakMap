*OpenSqueakMap
coordAsPixelAt2: aZoomLevel

	| px py |
	px := 128 * (self x degreesToRadians + self y degreesToRadians) * (2 raisedTo: aZoomLevel) / Float pi.
	py := 128 * (Float pi - (((Float pi / 4) + (self y degreesToRadians / 2)) tan ln)) * (2 raisedTo: aZoomLevel) / Float pi.
	^ px@py.