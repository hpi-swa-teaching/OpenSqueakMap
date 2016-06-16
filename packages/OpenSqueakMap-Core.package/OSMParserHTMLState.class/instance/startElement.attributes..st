as yet unclassified
startElement: aQualifiedName attributes: aDictionary
		
	aQualifiedName caseOf: {
		['p']->[self reading: true].
	} otherwise: []