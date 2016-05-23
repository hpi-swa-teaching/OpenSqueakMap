as yet unclassified
configurationRuleWithComputedAttributes

	|configurator|
	configurator := [:e | | attributes |
			attributes := Dictionary new.
			e osmEntity id = 1
				ifTrue: [attributes at: #color put: #black]
				ifFalse: [attributes at: #color put: #yellow].
			attributes].
	^ OSMConfigurationRule
		for: [:e | true]
		computeProperties: configurator.