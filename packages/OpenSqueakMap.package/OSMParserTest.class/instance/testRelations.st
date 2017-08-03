running
testRelations

	| relations firstRelation |
	relations := self dataSet relations select: [:x | x type = #relation].
	self assert: relations size = 1.
	
	firstRelation := relations at: '16349'.
	self assert: firstRelation id = '16349'.
	
	self assert: firstRelation tags size = 2.
	self assert: (firstRelation tags at: #addr:city) = 'Berlin'.
	self assert: (firstRelation tags at: #addr:country) = 'DE'.