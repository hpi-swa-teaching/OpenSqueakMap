initialize
initialize

	super initialize.
	self renderAttributes: Dictionary new.
	self on: #doubleClick send: #clicked to: self.
	