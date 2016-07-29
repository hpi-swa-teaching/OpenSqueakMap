rendering
objectsAtCurrentZoomLevel

	^self renderObjects select: [:x | x shouldShowAt: self viewport zoomLevel]