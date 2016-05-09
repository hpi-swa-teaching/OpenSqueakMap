accessing
initialize
	self 
		nodes: Dictionary new;
		ways: Dictionary new;
		relations: Dictionary new;
		state: OSMParseInitialState new.
	super initialize.