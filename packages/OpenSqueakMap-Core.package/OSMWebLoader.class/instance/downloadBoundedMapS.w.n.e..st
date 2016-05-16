as yet unclassified
downloadBoundedMapS: southNumber w: westNumber n: northNumber e: eastNumber

	| contentString boundsString|
	boundsString := '(', southNumber, ',', westNumber, ',', northNumber, ',', eastNumber, ')'.
	contentString := '(node', boundsString, ';way', boundsString, ';rel', boundsString, ';);out;'.
	^ (WebClient
		httpPost: 'http://overpass-api.de/api/interpreter'
		content: contentString
		type: nil) content.