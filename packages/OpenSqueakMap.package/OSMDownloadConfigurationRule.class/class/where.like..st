instance creation
where: aKey like: aValue
	"aValue should be a regular expression"

	^ self new queryString: '["', aKey, '"~"', aValue,'"]'.