accessing
selectedAttribute: anAttribute

	selectedAttribute := anAttribute.
	self changed: #selectedAttribute.
	self changed: #selectedAttributeIndex.
	"self changed: #selectedAttributeHelpText."