testing
shouldShowAt: aZoomLevel
	
	^ aZoomLevel 
		between: (self renderAttributesAt: #minZoom)
		and: (self renderAttributesAt: #maxZoom).