accessing
initialize

	super initialize.
	self 
		dataSet: OSMDataset new;
		states: Stack new.
	self states push: (OSMParseInitialState on: self).