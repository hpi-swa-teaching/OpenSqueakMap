building
buildRightButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: '>';
		action: #panRight;
		frame: (LayoutFrame
			fractions: (1@0.5 corner: 1@0.5)
			offsets: (Rectangle
				origin: (self class buttonWidth negated) @ (self class buttonHeight / 2 negated)
				corner: 0 @ (self buttonHeight / 2))).