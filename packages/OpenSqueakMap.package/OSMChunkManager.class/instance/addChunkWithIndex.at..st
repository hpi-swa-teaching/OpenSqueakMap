downloading
addChunkWithIndex: aPoint at: aZoomLevel

	| chunk |
	chunk := OSMChunk withIndex: aPoint on: self.
	self chunks at: aPoint put: chunk.
	chunk downloadWithConfig: self downloadConfig at: aZoomLevel.
	chunk dataSet nodes do: [:node | node isNilNode ifFalse: [self nodes at: node id put: node]].
	chunk dataSet ways do: [:way | self for: way setRenderingChunk: chunk].
	^ chunk