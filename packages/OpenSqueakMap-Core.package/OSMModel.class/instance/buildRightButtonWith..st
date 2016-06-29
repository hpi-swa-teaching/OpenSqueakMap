as yet unclassified
buildRightButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: '>';
		action: #panRight.