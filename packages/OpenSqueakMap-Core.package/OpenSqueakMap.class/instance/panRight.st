as yet unclassified
panRight

	self renderer changeOffsetBy: (self viewport extent x / 2) @ 0.
	self addMapMorph: self renderer mapMorph.