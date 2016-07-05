accessing
pixelOffset
	"Pixel coordinates are calculated on a global scale. Add this offset to position morphs in relation to myself."
	
	^ (self topLeftCoord coordAsPixelAt: self zoomLevel) - self bounds topLeft.