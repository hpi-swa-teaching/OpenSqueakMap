as yet unclassified
buildDownButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: 'v';
		action: #panDown.