as yet unclassified
objectsToRender 

	^ self renderObjects select: [:object |
		(object shouldShowAt: self viewport zoomLevel) and:
		[object isVisible] and:
		[self isRenderingChunkOf: object]].