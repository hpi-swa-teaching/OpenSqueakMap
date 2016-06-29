rendering
panUp
	
	| offset |
	offset := self
		getPanVectorFrom: (self extent x / 2) @ 0
		to: (self extent x / 2) @ (self extent y / 2).
	self moveViewportBy: offset.