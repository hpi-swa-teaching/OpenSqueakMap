rendering
objectsToRender 

	^ self renderObjects 
		select: [:object |
				(object shouldShowAt: self viewport zoomLevel) and:
				[object isVisible] and:
				[(object isKindOf: OSMWayRenderObject) not or:
				[self isRenderingChunkOf: object]]].