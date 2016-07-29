instance creation
where: aKey equals: aValue

	^ self new queryString: '["', aKey, '"="', aValue,'"]'.