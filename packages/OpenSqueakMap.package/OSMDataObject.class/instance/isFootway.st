testing
isFootway

	^ self isHighway and: [
		| value |
		value := self tags at: #highway.
		value = #footway or:
		[value = #path] or:
		[value = #pedestrian] or:
		[value = #steps]]