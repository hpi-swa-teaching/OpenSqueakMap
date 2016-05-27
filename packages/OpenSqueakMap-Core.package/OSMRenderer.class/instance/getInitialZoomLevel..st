rendering
getInitialZoomLevel: aRectangle 

	| scale extentInMeters |
	extentInMeters := self metersFromDegrees: aRectangle.
	self mPerDegrees: extentInMeters / aRectangle extent.
	
	(extentInMeters x / extentInMeters y) <= ((self initialWindowArea extent x) / (self initialWindowArea extent y))
		ifTrue: [scale := extentInMeters y abs / self initialWindowArea extent y]
		ifFalse: [scale := extentInMeters x abs / self initialWindowArea extent x].
	self zoomLevel: (((self worldCirc * (aRectangle top abs degreesToRadians cos) / scale) log: 2) - 8) ceiling.
	