submorphs
attributeList

	^ attributeList ifNil:
		[attributeList := ScrollPane new
			vResizing: #spaceFill;
			hResizing: #spaceFill;
			layoutFrame: (LayoutFrame fractions: (0.25@0 corner: 1@1) offsets: (4@0 corner: 0@0)).
		attributeList scroller
			addMorph: self attributeButtons;
			on: #keyStroke send: #keyPressed: to: self.
		attributeList.]