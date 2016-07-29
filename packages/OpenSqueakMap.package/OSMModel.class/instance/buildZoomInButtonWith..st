building
buildZoomInButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: '+';
		action: #zoomIn;
		frame: (LayoutFrame fractions: (0@0 corner: 0@0) offsets: (0@0 corner: self class buttonWidth @ self class buttonHeight)).