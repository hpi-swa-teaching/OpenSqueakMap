initialize-release
initialize 

	super initialize.
	self
		clipSubmorphs: true;
		chunks: OrderedCollection new;
		color: self class backgroundColor.