as yet unclassified
getReadableAddress

	| addrAttributes |
	self isBuilding 
		ifTrue: [
			addrAttributes := OrderedCollection new.
			addrAttributes 
				add: (self tags at: 'addr:street' ifAbsent: nil);
				add: (self tags at: 'addr:housenumber' ifAbsent: nil);
				add: (self tags at: 'addr:postcode' ifAbsent: nil);
				add: (self tags at: 'addr:city' ifAbsent: nil).
				
			^ addrAttributes asOrderedCollection inject: '' into: [:a :b | b isNil ifFalse: [a , ', ' ,  b] ifTrue: [a]]. 
			]
		ifFalse:[
			^ nil.
			]