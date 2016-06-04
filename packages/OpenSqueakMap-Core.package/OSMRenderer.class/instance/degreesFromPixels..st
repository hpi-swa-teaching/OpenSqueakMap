rendering
degreesFromPixels: aPoint

	^ (2 raisedTo: (self zoomLevel + 8) * aPoint y / self worldCirc) arcCos radiansToDegrees. 