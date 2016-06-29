accessing
applyTo: aRenderObject
	
	(self filter value: aRenderObject)
		ifTrue: [(self attributesFor: aRenderObject) associationsDo: [:ass |
			aRenderObject renderAttributes add: ass copy]].
	^ self.