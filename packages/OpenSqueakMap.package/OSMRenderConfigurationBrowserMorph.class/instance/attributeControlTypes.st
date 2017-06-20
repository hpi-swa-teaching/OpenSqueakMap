submorphs
attributeControlTypes 

	^ (Dictionary new)
		add: 'color' -> ((PluggableButtonMorph
			on: self model
			getState: nil
			action: #color)
			label: 'Change color';
			yourself);
		add: 'fillColor' -> ((PluggableButtonMorph
			on: self model
			getState: nil
			action: #fillColor)
			label: 'Change fillColor';
			position: self position + (0 @ 30);
			yourself);
		add: 'borderColor' -> ((PluggableButtonMorph
			on: self model
			getState: nil
			action: #borderColor)
			label: 'Change borderColor';
			position: self position + (0 @ 60);
			yourself);
		yourself.