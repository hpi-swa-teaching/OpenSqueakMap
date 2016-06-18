as yet unclassified
render

	self renderObjects do: [:obj | obj deleteMorph].
	self objectsToRender do: [:x | x renderOn: self].
	(self viewport containsMorph: self) ifFalse: [
		self viewport addMorph: self].
	