accessing
setRenderAttributes

	self
		color: (self renderAttributesAt: #fillColor);
		borderWidth: (self renderAttributesAt: #borderWidth);
		borderColor: (self renderAttributesAt: #color).