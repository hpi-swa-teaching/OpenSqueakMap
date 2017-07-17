morphic
showStreetName: aSet
	| streetType streetLength deltaX deltaY |
	"#highway is key for different street types"
	streetType := (self tags at: #highway ifAbsent: ['']).
	(aSet detect: [:aStreetType | aStreetType = streetType] ifNone: []) ifNotNil: [
		self displayedName
			ifNotNil: [
				self displayedName owner delete].
		streetLength := self totalLength.
		streetLength > 200
			ifTrue: [self displayedName: (self tags at: #name ifAbsent: ['']) asStringMorph.
					self owner addMorphFront: self displayedName.
		
					deltaX := self firstVertex x -  self lastVertex x.
					deltaY := self firstVertex y -  self lastVertex y.
					deltaX < 0 ifTrue:
						[deltaX := deltaX negated.
						deltaY := deltaY negated].
					
					self displayedName
						fontName: 'Bitmap DejaVu Sans' size: 16;
						position: self midpoint - ((self displayedName width / 2) @ (self displayedName height / 2));
						rotationDegrees: (deltaY arcTan: deltaX) * 180 / Float pi]].
	
			
		
		
		
