coordinate conversion
latToY: aNumber zoom: aZoomLevel
	"http://wiki.openstreetmap.org/wiki/Slippy_map_tilenames#Mathematics"
	
	^ (1 - ((((aNumber * Float pi / 180) degreesToRadians tan) + ((aNumber * Float pi / 180) degreesToRadians cos) reciprocal) ln / Float pi) * 2 raisedTo: (aZoomLevel -1))