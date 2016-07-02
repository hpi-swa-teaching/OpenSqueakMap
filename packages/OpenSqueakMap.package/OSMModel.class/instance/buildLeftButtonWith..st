as yet unclassified
buildLeftButtonWith: aBuilder

	^ (self buildButtonWith: aBuilder)
		label: '<';
		action: #panLeft;
		frame: (LayoutFrame
			fractions: (0@0.5 corner: 0@0.5)
			offsets: (Rectangle
				origin:0@(self buttonHeight / 2 negated)
				corner: self buttonWidth @ (self buttonHeight / 2))).