accessing
setRenderAttributesWithVertices: vertices

	self
		vertices: vertices
		color: (self renderAttributesAt: #fillColor)
		borderWidth: (self renderAttributesAt: #borderWidth)
		borderColor: (self renderAttributesAt: #color).