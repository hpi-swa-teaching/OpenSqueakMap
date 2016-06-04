as yet unclassified
panUp

	"self renderer changeOffsetBy: 0@(self viewport extent y / 2) negated."
	
	| offset |
	offset := self renderer
		getPanVectorFrom: (self viewport extent x / 2) @ 0
		to: (self viewport extent x / 2) @ (self viewport extent y / 2).
	self renderer moveViewportBy: offset.
	
	self updateMapMorph.