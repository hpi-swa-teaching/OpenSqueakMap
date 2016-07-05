as yet unclassified
initialize

	super initialize.
	self
		renderObjects: Bag new;
		wayMorphs: Dictionary new;
		position: 0@0;
		dirty: true.