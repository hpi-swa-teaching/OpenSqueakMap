initialize-release
initialize 

	super initialize.
	
	self mapMorph: ((Morph new extent: 1800 @ 720) openInWorld);
	wayMorphs: Dictionary new.