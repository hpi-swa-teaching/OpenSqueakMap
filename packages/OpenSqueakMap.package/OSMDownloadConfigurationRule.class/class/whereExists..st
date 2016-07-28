as yet unclassified
whereExists: aKey

	^ self new queryString: '["', aKey, '"]'.