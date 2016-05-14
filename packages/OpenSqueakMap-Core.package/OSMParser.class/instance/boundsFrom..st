handling - content
boundsFrom: aDictionary

	self dataSet bounds: 
		(Rectangle
			left: (aDictionary at: #minlon) asNumber
			right: (aDictionary at: #maxlon) asNumber
			top: (aDictionary at: #maxlat) asNumber
			bottom: (aDictionary at: #minlat) asNumber).