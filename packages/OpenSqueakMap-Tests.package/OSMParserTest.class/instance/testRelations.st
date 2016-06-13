as yet unclassified
testRelations
	| relations firstRelation secondRelation |
	relations := self dataSet relations select: [:x | x type = #relation].
	self assert: relations size = 2.
	
	firstRelation := relations at: '16349'.
	self assert: firstRelation id = '16349'.
	
	self assert: firstRelation members size = 5.
	self assert: ((firstRelation members at: 1) isKindOf: OSMNode).
	self assert: (firstRelation members at: 1) id = '27127283'.
	self assert: (firstRelation members at: 1) latitude = 52.4023071.
	self assert: ((firstRelation members at: 2) isKindOf: OSMWay).
	self assert: (firstRelation members at: 2) id = '51763472'.
	self assert: ((firstRelation members at: 3) isKindOf: OSMNode).
	self assert: (firstRelation members at: 3) id = '12345'.	
	self assert: ((firstRelation members at: 4) isKindOf: OSMWay).
	self assert: (firstRelation members at: 4) id = '123456'.
	self assert: ((firstRelation members at: 5) isKindOf: OSMRelation).
	self assert: (firstRelation members at: 5) id = '1234567'.
	
	self assert: firstRelation tags size = 2.
	self assert: (firstRelation tags at: #addr:city) = 'Berlin'.
	self assert: (firstRelation tags at: #addr:country) = 'DE'.
	
	secondRelation := relations at: '1234567'.
	self assert: secondRelation = (firstRelation members at: 5).
	self assert: secondRelation members size = 0.