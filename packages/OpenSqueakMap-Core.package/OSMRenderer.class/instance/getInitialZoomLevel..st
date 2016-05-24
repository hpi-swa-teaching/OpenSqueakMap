rendering
getInitialZoomLevel: aRectangle 

	| scale extentInMeters |
	extentInMeters := self metersFromDegrees: aRectangle.
	self mPerDegrees: extentInMeters / aRectangle extent.
	
	(extentInMeters x / extentInMeters y) <= ((self initialWindowSize extent x) / (self initialWindowSize extent y))
		ifTrue: [scale := extentInMeters y abs / self initialWindowSize extent y]
		ifFalse: [scale := extentInMeters x abs / self initialWindowSize extent x].
	self zoomLevel: (((self worldCirc * (aRectangle top abs degreesToRadians cos) / scale) log: 2) - 8) asInteger.
	