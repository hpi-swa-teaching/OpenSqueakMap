accessing
initialize

	super initialize.
	self 
		nodes: Dictionary new;
		ways: Dictionary new;
		relations: Dictionary new;
		states: Stack new.
	self states push: (OSMParseInitialState on: self).