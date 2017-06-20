accessing
openColorPicker 

	(NewColorPickerMorph
		on: self
		originalColor: (self getCurrentValueFor: (self selectedAttribute))
		setColorSelector: #color:)
		openInWorld.