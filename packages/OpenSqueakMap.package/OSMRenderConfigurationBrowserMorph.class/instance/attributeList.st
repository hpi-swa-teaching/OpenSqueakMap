accessing
attributeList

	^ attributeList ifNil:
		[attributeList := PluggablePanelMorph new
			color: Color white;
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			layoutFrame: (LayoutFrame fractions: (0.25@0 corner: 1@1) offsets: (5@0 corner: 0@0)).
		attributeList 
			addMorphBack: self attributeControls;
			on: #keyStroke send: #keyPressed: to: self.
		attributeList.]