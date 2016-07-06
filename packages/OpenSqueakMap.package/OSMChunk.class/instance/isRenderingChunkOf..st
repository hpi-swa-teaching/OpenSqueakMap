as yet unclassified
isRenderingChunkOf: aRenderObject

	(aRenderObject isKindOf: OSMWayRenderObject) ifFalse: [^true].
	^ (self chunkManager renderingChunks at: aRenderObject id) = self.