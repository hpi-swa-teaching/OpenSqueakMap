morphic
showStreetName: aSet
	| ownStreetType |
	"#highway is key for different street types"
	ownStreetType := (self tags at: #highway).
	(self checkIf: ownStreetType shouldBeShownAtActualZoomlevel: aSet) ifTrue: [
		self deleteOldStreetnameMorph.
		(self checkIfStreetIsLongEnough)
		ifTrue: [
			self initializeStreetmorph.
			self alignStreetmorph].
	].
	
			
		
		
		
