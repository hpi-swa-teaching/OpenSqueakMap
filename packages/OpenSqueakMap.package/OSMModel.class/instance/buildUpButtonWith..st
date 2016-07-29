building
buildUpButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: '^';
		action: #panUp;
		frame: (LayoutFrame
			fractions: (0.5@0 corner: 0.5@0)
			offsets: (Rectangle
				origin: (self class buttonWidth / 2 negated) @ 0
				corner: (self buttonWidth / 2) @ self class buttonHeight)).