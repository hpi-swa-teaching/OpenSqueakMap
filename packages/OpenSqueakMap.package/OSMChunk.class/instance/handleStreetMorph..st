helper
handleStreetMorph: aMorph

	self selectStreetTypesToShow: aMorph.
			"Some render objects do not have a streetname"
			aMorph displayedName 
				ifNotNil: [self streetnames add: aMorph displayedName].