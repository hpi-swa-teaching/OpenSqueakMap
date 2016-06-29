as yet unclassified
shouldShowAt: aZoomLevel
	
	^ (self renderAttributeAt: #minZoom) <= aZoomLevel and: [(self renderAttributeAt: #maxZoom) >= aZoomLevel]