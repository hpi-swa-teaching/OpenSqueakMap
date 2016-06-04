rendering
translate: aGeoCoordinate
	"deprecated, use Point>>coordsToPixelsAt: "
	
	^self scaleFactor * (aGeoCoordinate flipBy: #vertical centerAt: 0 @ 0).