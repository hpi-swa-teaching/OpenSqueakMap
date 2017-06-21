retrieve
getDefaultValueFor: anAttribute

	anAttribute = #minZoom
		ifTrue: [^ self class defaultTextForMinZoom].
	anAttribute = #maxZoom
		ifTrue: [^ self class defaultTextForMaxZoom].