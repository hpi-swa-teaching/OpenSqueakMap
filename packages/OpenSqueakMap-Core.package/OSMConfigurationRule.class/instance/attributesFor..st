accessing
attributesFor: aRenderObject
	
	self attributeComputer ifNil: [^ self basicAttributes].
	self basicAttributes addAll: (self attributeComputer value: aRenderObject).
	^ self basicAttributes.