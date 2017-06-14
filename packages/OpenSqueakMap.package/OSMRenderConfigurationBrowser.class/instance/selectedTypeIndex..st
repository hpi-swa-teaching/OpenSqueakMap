accessing
selectedTypeIndex: anIndex

	anIndex = 0
		ifTrue: [^self].
	"self selectedPreference: nil."
	selectedTypeIndex := anIndex.
	self changed: #selectedTypeIndex.