rendering
panLeft
	
	| offset |
	offset := self
		getPanVectorFrom: 0 @ (self extent y / 2) 
		to: (self extent x / 2) @ (self extent y / 2).
	self moveViewportBy: offset.