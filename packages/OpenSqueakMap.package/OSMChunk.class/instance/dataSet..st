accessing
dataSet: aDataset

	dataSet := aDataset.
	self renderObjects: Dictionary new.
	self renderObjects
		addAll: (dataSet nodes collect: [:node | node asRenderObject]);
		addAll: (dataSet ways collect: [:way | way asRenderObject]);
		addAll: (dataSet relations collect: [:rel | rel asRenderObject]).