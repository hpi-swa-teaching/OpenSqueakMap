instance creation
for: anElementFilter setAttributes: aDictionary
	
	^ self new
		filter: anElementFilter;
		basicAttributes: aDictionary;
		yourself.