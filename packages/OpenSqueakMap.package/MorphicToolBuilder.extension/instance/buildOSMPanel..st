*OpenSqueakMap
buildOSMPanel: aSpec

	| widget |
	widget := OSMPanelMorph new.
	self register: widget id: aSpec name.

	widget model: aSpec model.

	"Set child dependent layout properties."
	widget wantsPaneSplitters: (aSpec wantsResizeHandles ifNil: [false]).
	self setLayoutHintsFor: widget spec: aSpec.
	widget layoutInset: (aSpec padding ifNil: [0]).
	widget cellInset: (aSpec spacing ifNil: [
		widget wantsPaneSplitters
			ifTrue: [ProportionalSplitterMorph gripThickness]
			ifFalse: [2]]).

	"Now create the children."
	aSpec children isSymbol
		ifTrue: [
			widget getChildrenSelector: aSpec children.
			widget update: aSpec children]
		ifFalse: [
			self buildAll: aSpec children in: widget].

	self setFrame: aSpec frame in: widget.
	self setLayout: aSpec layout in: widget.
	
	parent ifNotNil:[self add: widget to: parent].

	widget borderWidth: 0.
	self buildHelpFor: widget spec: aSpec. 
	widget color: Color transparent.
	
	^ widget