initialize
initialize

	super initialize.
	self
		renderObjects: Bag new;
		wayMorphs: Dictionary new;
		streetnames: OrderedCollection new;
		positionInViewport: 0@0;
		shouldRedraw: true.