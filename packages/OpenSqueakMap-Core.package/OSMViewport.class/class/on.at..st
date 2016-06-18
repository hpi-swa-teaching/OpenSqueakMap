as yet unclassified
on: aPoint at: aZoomLevel

	^self new
		zoomLevel: aZoomLevel;
		calcCoordBoundsFrom: aPoint;
		yourself