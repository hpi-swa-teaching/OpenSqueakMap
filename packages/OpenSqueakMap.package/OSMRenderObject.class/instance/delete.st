as yet unclassified
delete

	self displayedName    
		ifNotNil: [self displayedName owner delete].
	super delete.