as yet unclassified
download

	| apiAnswer |
	apiAnswer := (WebClient
		httpPost: self class apiURL
		content: self apiQuery
		type: nil) content.
	self dataSet: (OSMParser on: apiAnswer) parseDocument.
		