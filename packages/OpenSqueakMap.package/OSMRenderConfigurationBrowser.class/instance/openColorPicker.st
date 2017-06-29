actions
openColorPicker 

	self activeColorPicker
		ifNotNilDo: [:aColorPickerMorph | aColorPickerMorph delete.].
	self activeColorPicker: (NewColorPickerMorph
		on: self
		originalColor: (self getCurrentValueFor: (self selectedAttribute))
		setColorSelector: #color:)
		openInWorld.