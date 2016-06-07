rendering
mapMorphBounds
	
	^ (self mapMorph ifNil: [^ self initialWindowArea]) bounds