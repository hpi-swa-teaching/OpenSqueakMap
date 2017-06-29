types
newTypeList
	
	^ (PluggableListMorph
		on: self model
		list: #typeList
		selected: #selectedTypeIndex
		changeSelected: #selectedTypeIndex:)
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			layoutFrame: (LayoutFrame fractions: (0@0 corner: 0.25@1));
			yourself.