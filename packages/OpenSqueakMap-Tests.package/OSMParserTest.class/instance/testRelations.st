as yet unclassified
testRelations
	| relations firstRelation |
	relations := self parser relations.
	self assert: relations size = 1.
	
	firstRelation := relations at: 1.
	self assert: firstRelation id = 16349.
	
	self assert: firstRelation members size = 2.
	self assert: ((firstRelation members at: 1) isKindOf: OSMNode).
	self assert: (firstRelation members at: 1) id = 27127283.
	self assert: (firstRelation members at: 1) latitude = 52.4023071.
	self assert: ((firstRelation members at: 2) isKindOf: OSMWay).
	self assert: (firstRelation members at: 2) id = 51763472.
	
	self assert: firstRelation tags size = 2.
	self assert: (firstRelation tags at: #addr:city) = 'Berlin'.
	self assert: (firstRelation tags at: #addr:country) = 'DE'.