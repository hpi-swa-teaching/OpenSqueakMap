as yet unclassified
addChunkWith: anIndex

	| chunk |
	chunk := OSMRenderChunk withIndex: anIndex on: self.
	self chunks at: anIndex put: chunk.
	chunk download.
	chunk dataSet nodes do: [:node | node isNilNode ifFalse: [self nodes at: node id put: node]].
	chunk dataSet ways do: [:way | self for: way setRenderingChunk: chunk].	
	^ chunk