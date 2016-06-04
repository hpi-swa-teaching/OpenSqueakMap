as yet unclassified
panRight

	"self renderer changeOffsetBy: (self viewport extent x / 2) @ 0."
	
	| offset |
	offset := self renderer
		getPanVectorFrom: (self viewport extent x) @ (self viewport extent y / 2) 
		to: (self viewport extent x / 2) @ (self viewport extent y / 2).
	self renderer moveViewportBy: offset.
	
	self updateMapMorph.