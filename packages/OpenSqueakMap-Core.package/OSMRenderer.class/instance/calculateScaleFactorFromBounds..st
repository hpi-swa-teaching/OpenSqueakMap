rendering
calculateScaleFactorFromBounds: aRectangle 

	| widthKm heightKm |
	heightKm := self kilometersFromLat: aRectangle height abs.
	widthKm := self kilometersFromLongitude: aRectangle width atLat: aRectangle top abs.

	self scaleFactor:  (widthKm / heightKm) @ 1 * (self mapMorph extent y / aRectangle height).
