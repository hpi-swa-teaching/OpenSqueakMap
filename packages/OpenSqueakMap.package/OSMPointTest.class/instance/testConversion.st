as yet unclassified
testConversion

	"by in order to speed up test and check non-integer values"
	-180 to: 180 by: 3.92345425 do: [:x |
		-89.9 to: 89.9 by: 1.7238794 do: [:y | 	"extra test for poles"
			0 to: 20 do: [:zoom |
				self assert: [((x@y coordsToPixelsAt: zoom) toGeoCoordsAt: zoom) closeTo: x@y]]]].