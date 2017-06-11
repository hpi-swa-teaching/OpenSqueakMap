helper
selectStreetsToShow: aMorph
	
	self zoomlevelAbstraction at: self viewport zoomLevel ifPresent: [:aSet | Transcript show: aSet. aMorph showStreetName: aSet].
	
	