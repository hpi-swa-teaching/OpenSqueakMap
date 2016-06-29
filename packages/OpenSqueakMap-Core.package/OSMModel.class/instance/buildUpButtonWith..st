as yet unclassified
buildUpButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: '^';
		action: #panUp.