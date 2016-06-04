initialize-release
initialize 

	super initialize.
	self chunks: OrderedCollection new.
	self mapMorph: (Morph new bounds: self initialWindowArea).