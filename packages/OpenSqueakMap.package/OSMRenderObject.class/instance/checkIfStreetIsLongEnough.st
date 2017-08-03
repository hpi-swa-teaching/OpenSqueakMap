helper
checkIfStreetIsLongEnough

	(self totalLength > 200) ifTrue: [^ true].
	^ false