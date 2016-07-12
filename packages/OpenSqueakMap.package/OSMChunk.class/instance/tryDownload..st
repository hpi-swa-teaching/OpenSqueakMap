as yet unclassified
tryDownload: aString

	| apiAnswer |
	apiAnswer := (WebClient
		httpPost: self class apiURL
		content: aString
		type: nil) content utf8ToSqueak.
	self dataSet: (OSMParser on: apiAnswer) parseDocument.
		