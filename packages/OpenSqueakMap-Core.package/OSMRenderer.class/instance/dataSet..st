accessing
dataSet: anObject

	dataSet := anObject.
	self getInitialZoomLevel: dataSet bounds.
	self renderObjects: (dataSet content collect: [:d | d asRenderObject]).