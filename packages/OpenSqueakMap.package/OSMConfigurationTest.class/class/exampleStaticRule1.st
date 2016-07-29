mocking
exampleStaticRule1

	^ OSMStaticRule for: [:e | e dataObject tags includesKey: #a] setAttributes: self exampleAttributes1.