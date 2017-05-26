geometry
findPointAt: aString
	| apiAnswer document firstPlace lat lon |
	apiAnswer := (WebClient 
		httpGet: 'http://nominatim.openstreetmap.org/search?q=' , aString encodeForHTTP , '&format=xml') content utf8ToSqueak.
	document := XMLDOMParser parse: apiAnswer.
	firstPlace := (document allNodesSelect: [:aNode | aNode isElementNamed: 'place']) at: 1.
	firstPlace ifNil: [^ self error: 'The address entered could not be found.'.].
	lat := (firstPlace attributes at: 'lat') asNumber.
	lon := (firstPlace attributes at: 'lon') asNumber.
	^ (lon @ lat).