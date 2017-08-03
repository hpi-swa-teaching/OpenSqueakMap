building
buildDownButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: 'v';
		action: #panDown;
		frame: (LayoutFrame
			fractions: (0.5@1 corner: 0.5@1)
			offsets: (Rectangle
				origin: (self class buttonWidth / 2 negated) @ (self class buttonHeight negated)
				corner: (self class buttonWidth / 2) @ 0)).