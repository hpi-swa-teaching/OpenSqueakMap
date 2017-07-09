running
testMorphs

	<timeout: 60>
	|carWayMorph catholicChapel|
	self shouldnt: [
		self viewport chunks do: [:aChunk | aChunk wayMorphs 
			detect: [:e | e dataObject id = '113525536'] 
			ifFound: [:aMorph | carWayMorph := aMorph] 
			ifNone: []].
		self assert: [(carWayMorph borderColor) = ((OSMRenderConfiguration defaultConfiguration rules at: 'carway') basicAttributes at: #color)].
		self assert: [(carWayMorph dataObject tags at: 'highway') = 'track'].
		
		self viewport chunks do: [:aChunk | aChunk wayMorphs 
			detect: [:e | e dataObject id = '251039053'] 
			ifFound: [:aMorph | catholicChapel := aMorph] 
			ifNone: []].
		self assert: [(catholicChapel borderColor) = ((OSMRenderConfiguration defaultConfiguration rules at: 'building') basicAttributes at: #color)].
		self assert: [(catholicChapel dataObject tags at: 'amenity') = 'place_of_worship'].
		self assert: [(catholicChapel dataObject tags at: 'denomination') = 'roman_catholic'].
		]
	raise: Error.