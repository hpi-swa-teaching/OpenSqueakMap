as yet unclassified
panLeft

	"self renderer changeOffsetBy: (self viewport extent x / 2) negated @ 0."
	
	| offset |
	offset := self renderer
		getPanVectorFrom: 0 @ (self viewport extent y / 2) 
		to: (self viewport extent x / 2) @ (self viewport extent y / 2).
	self renderer moveViewportBy: offset.
	
	self updateMapMorph.