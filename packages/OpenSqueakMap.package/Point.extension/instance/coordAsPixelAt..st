*OpenSqueakMap
coordAsPixelAt: aZoomLevel
	"Does the map projection. Assuming self is in geographic coordinates, this method returns the distance from 0°N 0°W in pixels"
	
	| px py |
	py := (self y * (2 raisedTo: aZoomLevel + 8) * 110574) / self worldCircumference.
	px := (self x * (2 raisedTo: aZoomLevel + 8) * 111320 * self y degreesToRadians cos) / self worldCircumference.
	^ px@py negated.