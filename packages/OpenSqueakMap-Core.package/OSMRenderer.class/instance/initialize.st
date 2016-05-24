initialize-release
initialize 

	super initialize.
	self renderObjects: Bag new.
	self wayMorphs: Dictionary new.
	self mapMorph: (Morph new bounds: self initialWindowArea).