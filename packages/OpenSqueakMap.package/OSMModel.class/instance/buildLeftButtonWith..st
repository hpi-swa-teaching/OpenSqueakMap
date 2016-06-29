as yet unclassified
buildLeftButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: '<';
		action: #panLeft.