initialize-release
initialize 

	super initialize.
	self
		bounds: self initialWindowArea;
		clipSubmorphs: true;
		chunks: OrderedCollection new;
		color: Color gray;
		openInWorld.