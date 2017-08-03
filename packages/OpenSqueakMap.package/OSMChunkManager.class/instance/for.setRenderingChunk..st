chunk assignment
for: aWay setRenderingChunk: aChunk
	
	| dispayedChunk |
	self renderingChunks at: aWay id 
		ifPresent: [:oldChunk | dispayedChunk :=  self chunks at: (oldChunk index).
				     dispayedChunk wayMorphs at: (aWay id) ifPresent: [:wayMorph | wayMorph delete].
				     (self backupChunksFor: aWay) add: dispayedChunk.].
	self renderingChunks at: aWay id put: aChunk.