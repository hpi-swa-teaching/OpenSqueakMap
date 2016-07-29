mocking
exampleObject3

	^ OSMRenderObject on:
		(OSMNode new
			id: 3;
			tags: (Dictionary newFrom: {#a->nil. #b->nil.});
			yourself).
	
	