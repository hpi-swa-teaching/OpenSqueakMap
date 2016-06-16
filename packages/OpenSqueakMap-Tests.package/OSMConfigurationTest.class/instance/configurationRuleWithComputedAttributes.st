as yet unclassified
configurationRuleWithComputedAttributes

	|configurator|
	configurator := [:e | | attributes |
			attributes := Dictionary new.
			e id = 1
				ifTrue: [attributes at: #color put: #black].
			e id = 2
				ifTrue: [attributes at: #color put: #yellow].
			attributes].
	^ OSMConfigurationRule
		for: [:e | true]
		computeProperties: configurator.