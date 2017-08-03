running
testPolesConversion

	-180 to: 180 do: [:x |
		0 to: 20 do: [:zoom |
			self assert: (((x@90 coordAsPixelAt: zoom) pixelAsCoordAt: zoom) closeTo: x@90).
			self assert: (((x@(-90) coordAsPixelAt: zoom) pixelAsCoordAt: zoom) closeTo: x@(-90))]].