rendering
render

	self shouldRedraw ifTrue: [
		self renderObjects do: [:obj | obj deleteMorph].
		self objectsToRender do: [:x | x renderOn: self].
		self shouldRedraw: false].