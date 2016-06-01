as yet unclassified
panLeft

	self renderer changeOffsetBy: (self viewport extent x / 2) negated @ 0.
	self addMapMorph: self renderer mapMorph.