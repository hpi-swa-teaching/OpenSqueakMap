morphic
showStreetName: aSet
	
	| ownStreetType |
	ownStreetType := (self tags at: #highway).
	(self checkIf: ownStreetType shouldBeShownAtActualZoomlevel: aSet) 
		ifTrue: [	self deleteOldStreetnameMorph.
				(self checkIfStreetIsLongEnough)
				ifTrue: [	self initializeStreetmorph.
						self alignStreetmorph]].