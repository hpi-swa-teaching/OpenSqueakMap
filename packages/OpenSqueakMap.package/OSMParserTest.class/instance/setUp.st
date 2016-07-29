running
setUp
	
	super setUp.
	self dataSet: (OSMParser parse: self class exampleDocument).