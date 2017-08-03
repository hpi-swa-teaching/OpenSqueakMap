chunk assignment
for: aWay setRenderingChunk: aChunk
	
	| displayedChunk |
	self renderingChunks at: aWay id 
		ifPresent: [	:oldChunk | 
					displayedChunk :=  self chunks at: (oldChunk index).
					displayedChunk wayMorphs at: (aWay id) 
						ifPresent: [:wayMorph | wayMorph delete].
				     (self backupChunksFor: aWay) add: displayedChunk ].
	self renderingChunks at: aWay id put: aChunk.