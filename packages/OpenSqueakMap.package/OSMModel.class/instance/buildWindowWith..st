building
buildWindowWith: builder
	
	| windowSpec |
	windowSpec := builder pluggableWindowSpec new.
	windowSpec 
		model: self;
		label: #windowTitle;
		children: OrderedCollection new.
	^ windowSpec.