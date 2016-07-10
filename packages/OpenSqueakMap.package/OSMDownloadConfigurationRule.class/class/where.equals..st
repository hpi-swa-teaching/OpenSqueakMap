as yet unclassified
where: aKey equals: aValue

	^ self new queryString: '["', aKey, '"="', aValue,'"]'.