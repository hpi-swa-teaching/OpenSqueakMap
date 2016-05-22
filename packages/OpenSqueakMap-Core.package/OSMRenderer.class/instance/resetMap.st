rendering
resetMap 

	self mapMorph ifNotNil: [self mapMorph delete].
	self wayMorphs: Dictionary new.
	self mapMorph: (Morph new extent: 1280 @ 720) openInWorld.