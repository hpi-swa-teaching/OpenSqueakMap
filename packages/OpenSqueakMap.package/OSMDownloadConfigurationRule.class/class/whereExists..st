instance creation
whereExists: aKey

	^ self new queryString: '["', aKey, '"]'.