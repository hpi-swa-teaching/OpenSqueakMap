mocking
exampleObject1

	^ OSMRenderObject on:
		(OSMNode new
			id: 1;
			tags: (Dictionary newFrom: {#a->nil.});
			yourself).
	
	