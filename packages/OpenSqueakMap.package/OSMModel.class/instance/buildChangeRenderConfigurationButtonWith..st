building
buildChangeRenderConfigurationButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: 'C';
		action: #changeRenderConfiguration;
		frame: (LayoutFrame fractions: (0@0 corner: 0@0) offsets: (2 * self class buttonWidth @ 0 corner: 3 * self class buttonWidth @ self class buttonHeight)).