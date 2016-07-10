as yet unclassified
where: aKey like: aValue
	"SQeaL"
	^ self new queryString: '["', aKey, '"~"', aValue,'"]'.