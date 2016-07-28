as yet unclassified
concatenateRules: aCollection

	aCollection inject: '' into: [:accumulator :rule | accumulator, rule]