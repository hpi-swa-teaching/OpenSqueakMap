rendering
calculateScaleFactorFromBounds: aRectangle 

	| widthKm heightKm |
	heightKm := self kilometersFromLat: aRectangle height abs.
	widthKm := self kilometersFromLongitude: aRectangle width atLat: aRectangle top abs.

	(widthKm / heightKm) >= (16/9) 
		ifTrue: [
			self scaleFactor:  (heightKm / widthKm) @ 1 * (self mapMorph extent y / aRectangle height abs)]
		ifFalse: [
			self scaleFactor:  1 @ (widthKm / heightKm) * (self mapMorph extent x / aRectangle width abs)].