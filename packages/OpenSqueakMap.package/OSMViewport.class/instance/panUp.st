rendering
panUp
	
	| offset |
	offset := self
		getPanVectorFrom: (self width / 2) @ 0
		to: (self width / 2) @ (self height / 2).
	self moveViewportBy: offset.