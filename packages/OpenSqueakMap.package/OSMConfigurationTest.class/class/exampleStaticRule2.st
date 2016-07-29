mocking
exampleStaticRule2

	^ OSMStaticRule for: [:e | e dataObject tags includesKey: #b] setAttributes: self exampleAttributes2.