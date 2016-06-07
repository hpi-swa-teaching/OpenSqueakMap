rendering
render

	self chunks do: [:x | x renderOn: self].
	^ self mapMorph.