accessing
openColorPickerFor: anAttribute

	self model selectedAttribute: anAttribute.
	(NewColorPickerMorph
		on: self model
		originalColor: (self model getCurrentValueFor: anAttribute)
		setColorSelector: #color:;
		openInWorld).