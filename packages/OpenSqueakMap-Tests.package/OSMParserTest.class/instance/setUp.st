as yet unclassified
setUp
	super setUp.
	self parser: (OSMParser on: self exampleDocument).
	self parser parseDocument.