helper
selectStreetTypesToShow: aMorph
	
	self zoomlevelAbstraction at: self viewport zoomLevel 
		ifPresent: [:aSet | aMorph showStreetName: aSet].
	