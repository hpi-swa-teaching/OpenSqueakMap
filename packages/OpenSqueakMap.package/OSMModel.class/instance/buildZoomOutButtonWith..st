as yet unclassified
buildZoomOutButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: '-';
		action: #zoomOut;
		frame: (LayoutFrame fractions: (0@0 corner: 0@0) offsets: (self buttonWidth @0 corner: 2 * self buttonWidth @ self buttonHeight)).