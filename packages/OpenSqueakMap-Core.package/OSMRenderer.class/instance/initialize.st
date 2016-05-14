initialize-release
initialize 

	super initialize.
	
	self mapMorph: ((Morph new extent: 1800 @ 1000) openInWorld);
	wayMorphs: Dictionary new.