types
attributeControlTypes 

	^ (Dictionary new)
		add: 'borderWidth' -> ((PluggableTextMorph
			on: self model
			text: #borderWidth
			accept: #borderWidth:)
			position: self position + (0 @ 60);
			yourself);
		add: 'minZoom' -> ((PluggableTextMorph
			on: self model
			text: #minZoom
			accept: #minZoom:)
			position: self position + (0 @ 60);
			yourself);
		add: 'maxZoom' -> ((PluggableTextMorph
			on: self model
			text: #maxZoom
			accept: #maxZoom:)
			position: self position + (0 @ 60);
			yourself);
		add: 'visible' -> ((PluggableCheckBoxMorph
			on: self model
			getState: #isVisible
			action: #visible
			label: #labelForVisible)
			installButton;
			position: self position + (0 @ 60);
			yourself);
		add: 'color' -> ((PluggableButtonMorph
			on: self model
			getState: nil
			action: #color
			label: #labelForColor)
			yourself);
		add: 'fillColor' -> ((PluggableButtonMorph
			on: self model
			getState: nil
			action: #fillColor
			label: #labelForFillColor)
			position: self position + (0 @ 30);
			yourself);
		add: 'borderColor' -> ((PluggableButtonMorph
			on: self model
			getState: nil
			action: #borderColor
			label: #labelForBorderColor)
			position: self position + (0 @ 60);
			yourself);
		yourself.