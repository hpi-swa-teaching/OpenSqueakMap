building
buildFindInputFieldWith: aBuilder

	^ (self buildInputFieldWith: aBuilder)
		setText: #find:;
		indicateUnacceptedChanges: false;
		help: 'Find a place or address ...';
		frame: (LayoutFrame
			fractions: (0@1 corner: 0@1)
			offsets: (Rectangle
				origin:0@(self class buttonHeight negated)
				corner: self class buttonWidth * 6 @ 0)).