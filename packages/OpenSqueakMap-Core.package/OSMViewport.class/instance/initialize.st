initialize-release
initialize 

	super initialize.
	self bounds: self initialWindowArea.
	self clipSubmorphs: true.
	self chunks: OrderedCollection new.
	self mapMorph: (Morph new bounds: self initialWindowArea).
	self openInWorld.