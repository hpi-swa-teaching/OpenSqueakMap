accessing
applyTo: aRenderObject
	
	(self filter value: aRenderObject) 
		ifTrue: [aRenderObject renderAttributes
			addAll: (self attributesFor: aRenderObject) copy].
	^ self.