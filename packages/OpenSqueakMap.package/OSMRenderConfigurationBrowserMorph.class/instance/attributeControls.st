accessing
attributeControls

	^ attributeControls ifNil: [
		attributeControls := (PluggablePanelMorph new)
			color: Color transparent;
			layoutPolicy: TableLayout new;
			listDirection: #topToBottom;
			vResizing: #shrinkWrap;
			hResizing: #spaceFill;
			layoutInset: 5@5;
			addAllMorphsBack: (self availableControlTypes) values;
			yourself.].