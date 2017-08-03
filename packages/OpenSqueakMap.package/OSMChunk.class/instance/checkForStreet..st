helper
checkForStreet: aMorph

	(aMorph tags at: #highway ifAbsent: [])
		ifNotNil: [^ true].
	^ false.