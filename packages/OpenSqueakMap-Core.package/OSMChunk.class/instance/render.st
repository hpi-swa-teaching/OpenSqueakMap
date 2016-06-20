as yet unclassified
render

	self dirty ifTrue: [ 
		self renderObjects do: [:obj | obj deleteMorph].
		self objectsToRender do: [:x | x renderOn: self].
		self dirty: false].