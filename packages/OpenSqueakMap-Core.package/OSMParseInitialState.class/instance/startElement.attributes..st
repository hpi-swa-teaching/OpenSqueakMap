accessing
startElement: aQualifiedName attributes: aDictionary

	aQualifiedName = 'osm'
		ifTrue: [self parser states push: (OSMParserOSMState on: self parser)]
		ifFalse: [self error: 'Unidentified tag at root level: ', aQualifiedName]