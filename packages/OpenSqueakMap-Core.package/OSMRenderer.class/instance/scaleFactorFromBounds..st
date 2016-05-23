rendering
scaleFactorFromBounds: aRectangle

	| s |
	s := self worldCirc * aRectangle top degreesToRadians cos / (2 raisedTo: (self zoomLevel + 8)).
	self scaleFactor: self mPerDegrees / s.