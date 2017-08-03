building
buildZoomOutButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: '-';
		action: #zoomOut;
		frame: (LayoutFrame fractions: (0@0 corner: 0@0) offsets: (self class buttonWidth @0 corner: 2 * self class buttonWidth @ self class buttonHeight)).