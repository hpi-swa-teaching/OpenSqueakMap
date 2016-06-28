as yet unclassified
buildWindow

	| model |
	model := OSMModel new.
	self window: (ToolBuilder default open: model).
	model viewport: self viewport.