helper
deleteOldStreetnameMorph
	
	self displayedName ifNotNil: [self displayedName owner delete].