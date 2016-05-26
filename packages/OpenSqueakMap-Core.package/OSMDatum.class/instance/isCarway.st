accessing
isCarway

	^ self isHighway and: [self isFootway not] and: [
		| value |
		value := self tags at: #highway.
		value = #construction not and: [value = #proposed] not].