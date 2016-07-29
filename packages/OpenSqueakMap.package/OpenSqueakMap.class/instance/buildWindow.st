building
buildWindow

	| model |
	model := OSMModel new.
	self window: (ToolBuilder default open: model).
	model addViewport: self viewport.