initialize
initialize

	super initialize.
	self renderAttributes: Dictionary new.
	self
		on: #doubleClick send: #doubleClicked to: self;
		on: #keyStroke send: #keyStroke to: self.