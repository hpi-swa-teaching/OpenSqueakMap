types
attributeControlTypes 

	^ (Dictionary new)
		add: 'borderWidth' -> ((self newControlLabel: 'Border Width:')
			addMorphBack: ((PluggableTextMorph
				on: self model
				text: #borderWidth
				accept: #borderWidth:)
				height: 20;
				yourself));
		add: 'minZoom' -> ((self newControlLabel: 'Display starting at zoom level:')
			addMorphBack: ((PluggableTextMorph
				on: self model
				text: #minZoom
				accept: #minZoom:)
				height: 20;
				yourself));
		add: 'maxZoom' -> ((self newControlLabel: 'Display ending at zoom level:')
			addMorphBack: ((PluggableTextMorph
				on: self model
				text: #maxZoom
				accept: #maxZoom:)
				height: 20;
				yourself));
		add: 'visible' -> ((self newControlLabel: 'Element should be visible:')
			addMorphBack: ((PluggableCheckBoxMorph
				on: self model
				getState: #isVisible
				action: #visible
				label: #labelForVisible)
				installButton;
				hResizing: #shrinkWrap;
				color: Color transparent;
				yourself));
		add: 'color' -> ((self newControlLabel: 'Color:')
			addMorphBack: ((PluggableButtonMorph
				on: self model
				getState: nil
				action: #color
				label: #labelForColor)
				yourself));
		add: 'fillColor' -> ((self newControlLabel: 'Fill Color: ')
			addMorphBack: ((PluggableButtonMorph
				on: self model
				getState: nil
				action: #fillColor
				label: #labelForFillColor)
				yourself));
		add: 'borderColor' -> ((self newControlLabel: 'Border Color: ')
			addMorphBack: ((PluggableButtonMorph
				on: self model
				getState: nil
				action: #borderColor
				label: #labelForBorderColor)
				position: self position + (0 @ 60);
				yourself));
		yourself.