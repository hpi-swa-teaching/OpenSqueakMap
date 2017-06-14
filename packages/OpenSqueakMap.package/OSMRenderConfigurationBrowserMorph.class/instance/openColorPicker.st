accessing
openColorPicker

	(NewColorPickerMorph
		on: self model
		originalColor: self model selectedTypeColor
		setColorSelector: #color:)
		openInWorld.