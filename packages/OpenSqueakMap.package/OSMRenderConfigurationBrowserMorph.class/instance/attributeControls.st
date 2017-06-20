accessing
attributeControls

	^ attributeControls ifNil: [
		attributeControls := (PluggablePanelMorph new) 
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: (0@0 corner: 0@0));
			addAllMorphs: (self availableControlTypes) values;
			yourself].