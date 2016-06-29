as yet unclassified
setUp
	
	super setUp.
	self dataSet: (OSMParser parse: self exampleDocument).