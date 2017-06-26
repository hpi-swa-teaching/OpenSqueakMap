rendering
coordBounds

	| center |
	center := self centerCoord coordAsPixelAt: self zoomLevel.
	^ (Rectangle 
		origin: ((center  - (self extent / 2)) pixelAsCoordAt:  self zoomLevel) 
		corner: ((center  + (self extent / 2)) pixelAsCoordAt:  self zoomLevel)).