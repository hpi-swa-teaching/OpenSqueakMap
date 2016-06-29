as yet unclassified
for: anElementFilter computeProperties: aBlock
	
	^ self new
		filter: anElementFilter;
		attributeComputer: aBlock;
		yourself.