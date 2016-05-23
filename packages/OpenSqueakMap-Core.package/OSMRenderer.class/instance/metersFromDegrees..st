rendering
metersFromDegrees: aRectangle

	^(111320 * (aRectangle top degreesToRadians cos) * aRectangle extent x) @ (110574 * aRectangle extent y).