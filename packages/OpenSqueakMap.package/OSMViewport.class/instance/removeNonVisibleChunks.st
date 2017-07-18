as yet unclassified
removeNonVisibleChunks
	
	| visibleChunks |
	visibleChunks := OrderedCollection new.
	
	self chunks do: [:aChunk |
		| chunkCoord viewportCoord isIntersecting |
		chunkCoord := aChunk coordBounds.
		viewportCoord := self coordBounds.
		isIntersecting := true.

		chunkCoord corner x <= viewportCoord origin x	ifTrue: [isIntersecting := false].
		chunkCoord corner y >= viewportCoord origin y	ifTrue: [isIntersecting := false].
		chunkCoord origin x >= viewportCoord corner x	ifTrue: [isIntersecting := false].
		chunkCoord origin y <= viewportCoord corner y	ifTrue: [isIntersecting := false].
			
		viewportCoord corner x < viewportCoord origin x	ifTrue: [isIntersecting := false].
		viewportCoord corner y > viewportCoord origin y	ifTrue: [isIntersecting := false].
		chunkCoord corner x < chunkCoord origin x	ifTrue: [isIntersecting := false].
		chunkCoord corner y > chunkCoord origin y	ifTrue: [isIntersecting := false].
		
		isIntersecting ifTrue: [visibleChunks add: aChunk]].
	
	self chunks: visibleChunks.