accessing
attributesFor: aRenderObject
	
	self attributeComputer ifNil: [^ self basicAttributes].
	^ self basicAttributes copy addAll: (self attributeComputer value: aRenderObject).