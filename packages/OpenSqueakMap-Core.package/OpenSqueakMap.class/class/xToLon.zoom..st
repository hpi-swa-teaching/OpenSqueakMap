coordinate conversion
xToLon: aNumber zoom: aZoomLevel

	^ aNumber * 360 / 2 raisedTo: aZoomLevel - 180.