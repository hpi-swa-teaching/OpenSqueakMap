as yet unclassified
objectsToRender 

	^ self objectsAtCurrentZoomLevel 
		select: [:object | (object renderAttributes at: #visible ifAbsent: [false]) and: [
			(object isKindOf: OSMWayRenderObject) not or:
				[(self chunkManager renderingChunks at: object id) = self]]]