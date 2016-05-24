as yet unclassified
shouldShowAt: aZoomLevel
	
	^(self renderAttributeAt: #minZoom) <= aZoomLevel or: [(self renderAttributeAt: #maxZoom) >= aZoomLevel]