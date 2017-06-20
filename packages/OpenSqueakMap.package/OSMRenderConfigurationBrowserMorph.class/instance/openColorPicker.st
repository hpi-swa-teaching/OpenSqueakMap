accessing
openColorPicker

	(NewColorPickerMorph
		on: self model
		originalColor: (self model getCurrentValueFor: #color)
		setColorSelector: #color:)
		openInWorld.