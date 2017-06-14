accessing
attributeButtons

	^ attributeButtons ifNil: [
		(PluggablePanelMorph new) 
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: (0@0 corner: 0@0));
			addMorph: 
				((PluggableButtonMorph
					on: self
					getState: nil
					action: #openColorPicker)
					label: 'Change color';
					yourself);
			"addMorph: 
				(NewColorPickerMorph
					on: self model
					originalColor: self model selectedTypeColor
					setColorSelector: #color:)"
			"addMorph:  
				((UiLineEdit new)
					helpText: '12';
					layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@0.1) offsets: (0@15 corner: 0@0));
					yourself);
			addMorph:
				((UiSpacer new)
					orientation: #horizontal;
					yourself);
			addMorph:
				((UiLabel new)
					text: 'borderWidth';
					yourself);"
			yourself].