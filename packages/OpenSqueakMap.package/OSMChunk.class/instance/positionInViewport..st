accessing
positionInViewport: aPoint

	self positionInViewport ifNotNil: [
		| delta |
		delta := (aPoint - self positionInViewport) rounded.
		delta = (0@0) ifFalse: [self fullMoveBy: delta]].
	positionInViewport := aPoint.