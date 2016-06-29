as yet unclassified
exampleObject2

	^ OSMRenderObject on:
		(OSMNode new
			id: 2;
			tags: (Dictionary newFrom: {#a->nil. #b->nil.});
			yourself).
	
	