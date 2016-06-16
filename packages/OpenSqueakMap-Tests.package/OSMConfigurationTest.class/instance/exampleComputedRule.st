as yet unclassified
exampleComputedRule

	|configurator|
	configurator := [:e | | attributes |
		attributes := Dictionary new.
		e id = 1 ifTrue: [attributes at: #color put: Color black].
		e id = 2 ifTrue: [attributes at: #color put: Color yellow].
		attributes].
	^ OSMComputedRule
		for: [:e | true]
		computeProperties: configurator.