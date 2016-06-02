accessing
dataSet: anObject

	dataSet := anObject
	self renderObjects: (dataSet content collect: [:d | d asRenderObject]).