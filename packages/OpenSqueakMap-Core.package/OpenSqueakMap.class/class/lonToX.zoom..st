coordinate conversion
lonToX: aNumber zoom: aZoomLevel

	^ (aNumber + 180 / 360 * 2 raisedTo: aZoomLevel).