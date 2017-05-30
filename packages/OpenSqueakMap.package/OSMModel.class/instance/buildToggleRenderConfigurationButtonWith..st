building
buildToggleRenderConfigurationButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: '*';
		action: #toggleRenderConfiguration;
		frame: (LayoutFrame fractions: (0@0 corner: 0@0) offsets: (2 * self class buttonWidth @ 0 corner: 3 * self class buttonWidth @ self class buttonHeight)).