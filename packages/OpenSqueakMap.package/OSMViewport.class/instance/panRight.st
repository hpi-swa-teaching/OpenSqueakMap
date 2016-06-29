rendering
panRight
	
	| offset |
	offset := self
		getPanVectorFrom: (self extent x) @ (self extent y / 2) 
		to: (self extent x / 2) @ (self extent y / 2).
	self moveViewportBy: offset.
