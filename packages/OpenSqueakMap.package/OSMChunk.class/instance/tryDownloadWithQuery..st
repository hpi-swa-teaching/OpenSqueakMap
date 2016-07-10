as yet unclassified
tryDownloadWithQuery: aString

	| apiAnswer |
	apiAnswer := (WebClient
		httpPost: self class apiURL
		content: aString
		type: nil) content.
	self dataSet: (OSMParser on: apiAnswer) parseDocument.
		