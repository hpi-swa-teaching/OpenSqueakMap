testing
shouldShowAt: aZoomLevel
	
	^ aZoomLevel 
		between: (self renderAttributeAt: #minZoom)
		and: (self renderAttributeAt: #maxZoom).