model access
newControlLabel: aString

	^ (PluggablePanelMorph new)
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		layoutInset: 5@5;
		addMorphBack: ((StringMorph
			contents: aString)
			hResizing: #spaceFill;
			yourself);
		yourself.