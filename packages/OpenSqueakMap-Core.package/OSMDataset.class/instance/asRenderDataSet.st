accessing
asRenderDataSet

	^ self class new
		content: (self content collect: [:x | x asRenderObject]).