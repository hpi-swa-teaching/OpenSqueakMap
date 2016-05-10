as yet unclassified
handleNodeWith: aDictionary
	|nodeState|
	nodeState := (OSMParseNodeState on: self state).
	nodeState attributes: aDictionary.
	self parser states push: nodeState.