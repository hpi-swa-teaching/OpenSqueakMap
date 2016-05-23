accessing
applyTo: aRenderObject
	
	(self filter value: aRenderObject)
		ifTrue: [aRenderObject renderAttributes: (self attributesFor: aRenderObject).]