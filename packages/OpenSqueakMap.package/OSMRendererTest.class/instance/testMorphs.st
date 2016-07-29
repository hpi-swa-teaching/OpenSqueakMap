running
testMorphs

	<timeout: 60>
	|carWayMorph catholicChapel|
	self shouldnt: [
		carWayMorph := self viewport submorphs detect: [:e | e dataObject id = '251039063'].
		self assert: [(carWayMorph borderColor) = (Color yellow lighter)].
		self assert: [(carWayMorph dataObject tags at: 'highway') = 'track'].
		
		catholicChapel := self viewport submorphs detect: [:e | e dataObject id = '251039053'].
		self assert: [(catholicChapel borderColor) = (Color darkGray)].
		self assert: [(catholicChapel dataObject tags at: 'amenity') = 'place_of_worship'].
		self assert: [(catholicChapel dataObject tags at: 'denomination') = 'roman_catholic'].
		]
	raise: Error.