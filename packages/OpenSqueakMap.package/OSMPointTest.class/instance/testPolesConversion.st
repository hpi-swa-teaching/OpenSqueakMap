as yet unclassified
testPolesConversion

	-180 to: 180 do: [:x |
		0 to: 20 do: [:zoom |
			self assert: ((x@90 coordsToPixelsAt: zoom) toGeoCoordsAt: zoom) equals: 0@90.
			self assert: ((x@(-90) coordsToPixelsAt: zoom) toGeoCoordsAt: zoom) equals: 0@(-90)]].