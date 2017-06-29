downloading
processDataSetOf: aChunk

	aChunk dataSet nodes
		do: [:node | node isNilNode
				ifFalse: [self nodes at: node id put: node]].
	aChunk dataSet ways
		do: [ :way | self for: way setRenderingChunk: aChunk].