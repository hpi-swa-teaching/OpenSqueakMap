initialize
initialize 

	super initialize.
	self
		clipSubmorphs: true;
		chunks: OrderedCollection new;
		color: self class backgroundColor;
		isPanning: false;
		on: #startDrag send: #startPanning to: self;
		on: #mouseUp send: #endPanning to: self;
		on: #mouseStillDown send: #continuePanning to: self.