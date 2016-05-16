as yet unclassified
endElement: aQualifiedName
	
	aQualifiedName caseOf: {
		['note']->[].
		['meta']->[].
		['osm']->[self parser states pop].
		['bounds']->[].
	} otherwise: [self error: 'Cannot handle element ', aQualifiedName]