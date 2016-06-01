as yet unclassified
addWayMorph: aMorph at: anId

	self wayMorphs at: anId put: aMorph.
	self addMorph: aMorph.