rendering
degreesFromPixels: aPoint

	|dx dy|	

	dy := (self worldCirc aPoint y ) / ((2 raisedTo: self zoomLevel + 8) * 110574).
	dx := (self worldCirc aPoint y ) / ((2 raisedTo: self zoomLevel + 8) * 111320 * dy degreesToRadians cos).
	
	^ dx@dy.