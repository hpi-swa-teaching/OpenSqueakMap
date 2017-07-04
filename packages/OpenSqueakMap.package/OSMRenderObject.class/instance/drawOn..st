accessing
drawOn: aCanvas

	(self shouldRenderLabels) 
		ifTrue: [self shouldRenderLabels: false. ]
		ifFalse: [self shouldRenderLabels: true. super drawOn: aCanvas].