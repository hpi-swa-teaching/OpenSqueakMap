accessing
startElement: aQualifiedName attributes: aDictionary

	aQualifiedName caseOf: {
		['osm']->[self parser states push: (OSMParserOSMState on: self parser)].
		['html']->[self parser states push: (OSMParserHTMLState on: self parser)]
		} otherwise: [self error: 'Unidentified tag at root level: ', aQualifiedName]