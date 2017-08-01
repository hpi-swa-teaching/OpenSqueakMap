helper
calculateRotationDegree

	| deltaX deltaY | 
	
	deltaX := self firstVertex x -  self lastVertex x.
	deltaY := self firstVertex y -  self lastVertex y.
	deltaX < 0 ifTrue:
	[deltaX := deltaX negated.
	deltaY := deltaY negated].
	
	^ ((deltaY arcTan: deltaX) * 180 / Float pi).