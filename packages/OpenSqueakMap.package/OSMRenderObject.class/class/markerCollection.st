accessing
markerCollection

	^ MarkerCollection
		ifNil: [
			MarkerCollection := OrderedCollection new].