as yet unclassified
objectsToRender 

	^ self objectsAtCurrentZoomLevel 
		select: [:object |
			((object isKindOf: OSMWayRenderObject) not) or:
			[(self chunkManager renderingChunks at: object id) = self]].