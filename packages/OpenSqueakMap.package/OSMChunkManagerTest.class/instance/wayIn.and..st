as yet unclassified
wayIn: aChunk and: anotherChunk
	aChunk dataSet ways
		keysAndValuesDo: [:key :value | (anotherChunk dataSet ways includesKey: key) ifTrue: [^ value]].
	^ nil