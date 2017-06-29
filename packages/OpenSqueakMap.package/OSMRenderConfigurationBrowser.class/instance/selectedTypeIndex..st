accessing
selectedTypeIndex: anIndex

	anIndex = 0
		ifTrue: [^self].
	selectedTypeIndex := anIndex.
	self changed: #selectedTypeIndex.