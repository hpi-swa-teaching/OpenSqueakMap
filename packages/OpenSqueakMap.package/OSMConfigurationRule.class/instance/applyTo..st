applying
applyTo: aRenderObject
	
	(self filter value: aRenderObject) 
		ifTrue: [aRenderObject renderAttributes
			addAll: (self attributesFor: aRenderObject)].
	^ self.