as yet unclassified
endElement: aQualifiedName
	
	aQualifiedName caseOf: {
		['osm']->[self parser states pop].
		['bounds']->[].
	} otherwise: [self error: 'Cannot handle element ', aQualifiedName]