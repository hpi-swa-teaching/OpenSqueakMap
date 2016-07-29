rendering
addWayMorph: aMorph

	self wayMorphs at: aMorph id put: aMorph.
	self viewport addMorph: aMorph.