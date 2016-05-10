as yet unclassified
startElement: aQualifiedName attributes: aDictionary
	aQualifiedName caseOf: {
	['node']->[self parser states push: (OSMParseNodeState on: self state)].
	['way']->[self parser states push: (OSMParseWayState on: self state)].
	['relation']->[self parser states push: (OSMParseRelationState on: self state)].
	} otherwise: [self error: 'Cannot handle element ', aQualifiedName]