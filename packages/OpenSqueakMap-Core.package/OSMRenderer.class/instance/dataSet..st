accessing
dataSet: anObject

	dataSet := anObject.
	self zoomLevel: 18.
	self renderObjects: (dataSet content collect: [:d | d asRenderObject]).