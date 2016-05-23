rendering
resetMap 

	self mapMorph ifNotNil: [self mapMorph delete].
	self wayMorphs: Dictionary new.
	self mapMorph: (Morph new bounds: self currentWorld visibleClearArea) openInWorld.