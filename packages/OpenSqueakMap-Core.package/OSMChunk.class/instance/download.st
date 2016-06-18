as yet unclassified
download

	| apiAnswer |
	apiAnswer := (WebClient
		httpPost: 'http://overpass-api.de/api/interpreter'
		content: self apiQuery
		type: nil) content.
	self dataSet: (OSMParser on: apiAnswer) parseDocument.
		