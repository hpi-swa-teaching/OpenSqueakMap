*OpenSqueakMap
pixelAsCoordAt: aZoomLevel
	"Does the map un-projection by using Web Mercator. Assuming self is the distance from  0°N 0°W in pixels, this method returns the geographic coordinates of self"

	| dx dy |
	dy := (2 * ((Float e raisedTo: (Float pi - (Float pi * self y /(128 * (2 raisedTo: aZoomLevel))))) arcTan)) - (Float pi / 2).
	dx := (Float pi * self x / (128 * (2 raisedTo: aZoomLevel))) - Float pi.
	^ (dx radiansToDegrees) @ (dy radiansToDegrees).