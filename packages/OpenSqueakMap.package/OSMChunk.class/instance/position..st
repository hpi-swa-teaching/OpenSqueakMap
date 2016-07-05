accessing
position: aPoint

	position ifNotNil: [
		| delta |
		delta := (aPoint - position) rounded.
		(delta x = 0 and: [delta y = 0]) ifFalse: [
			self fullMoveBy: delta]].
	position := aPoint.