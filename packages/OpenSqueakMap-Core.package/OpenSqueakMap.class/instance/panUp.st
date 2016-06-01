as yet unclassified
panUp

	self renderer changeOffsetBy: 0@(self viewport extent y / 2) negated.
	self addMapMorph: self renderer mapMorph.