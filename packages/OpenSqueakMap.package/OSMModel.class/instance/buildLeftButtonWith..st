building
buildLeftButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: '<';
		action: #panLeft;
		frame: (LayoutFrame
			fractions: (0@0.5 corner: 0@0.5)
			offsets: (Rectangle
				origin:0@(self class buttonHeight / 2 negated)
				corner: self class buttonWidth @ (self class buttonHeight / 2))).