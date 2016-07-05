as yet unclassified
testChunk
	
	<timeout: 60>
	|chunk1 chunk2|
	chunk1 := chunkmanager chunks at: (9650@13999) ifAbsent: [nil].
	chunk2 := chunkmanager chunks at: (9650@14000) ifAbsent: [nil].
	self assert: ((chunk1 isNil not) | (chunk2 isNil not) | (chunkmanager chunks size == 2)).		