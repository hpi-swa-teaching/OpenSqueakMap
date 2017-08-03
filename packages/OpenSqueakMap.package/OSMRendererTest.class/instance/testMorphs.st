running
testMorphs

	<timeout: 60>
	| catholicChapel |
	self shouldnt: [
		self viewport chunks do: [:aChunk | aChunk wayMorphs 
			detect: [:e | e dataObject id = '251039053'] 
			ifFound: [:aMorph | catholicChapel := aMorph] 
			ifNone: []].
		self assert: [(catholicChapel borderColor) = ((OSMRenderConfiguration defaultConfiguration rules at: 'building') basicAttributes at: #color)].
		self assert: [(catholicChapel dataObject tags at: 'amenity') = 'place_of_worship'].
		self assert: [(catholicChapel dataObject tags at: 'denomination') = 'roman_catholic'].
		]
	raise: Error.