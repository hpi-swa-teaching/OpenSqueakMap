handling - content
startElement: aQualifiedName attributes: aDictionary
	
	aQualifiedName caseOf: {
		['note']->[].
		['meta']->[].
		['bounds']->[].
		['node']->[self parser states push: (OSMParseNodeState on: self parser with: aDictionary)].
		['way']->[self parser states push: (OSMParseWayState on: self parser with: aDictionary)].
		['relation']->[self parser states push: (OSMParseRelationState on: self parser with: aDictionary)].
	} otherwise: [self unknownTag: aQualifiedName]