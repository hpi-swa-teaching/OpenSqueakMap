coordinate conversion
yToLat: aNumber zoom: aZoomLevel

	^ (Float pi - (aNumber * (2* Float pi) / (2 raisedTo: aZoomLevel))) degreesToRadians sinh arcTan * (180 / Float pi).