as yet unclassified
download

| contentString boundsString|
	boundsString := '(',
		self coordBounds bottom, ',',
		self coordBounds left, ',',
		self coordBounds top, ',', 
		self coordBounds right, ')'.
	contentString := '(node', boundsString, ';way', boundsString, ';rel', boundsString, ';);out;'.
	self dataSet: (WebClient
		httpPost: 'http://overpass-api.de/api/interpreter'
		content: contentString
		type: nil) content.