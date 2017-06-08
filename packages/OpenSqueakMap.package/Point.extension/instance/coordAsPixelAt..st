*OpenSqueakMap
coordAsPixelAt: aZoomLevel
	"Does the map projection by using Web Mercator. Assuming self is in geographic coordinates, this method returns the distance from 0°N 0°W in pixels"
	
	| px py |
	px := 128 * (self x degreesToRadians + Float pi) * (2 raisedTo: aZoomLevel) / Float pi.
	py := 128 * (Float pi - (((Float pi / 4) + (self y degreesToRadians / 2)) tan ln)) * (2 raisedTo: aZoomLevel) / Float pi.
	^ px@py.