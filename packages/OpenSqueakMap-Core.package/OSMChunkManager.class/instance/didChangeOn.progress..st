as yet unclassified
didChangeOn: aViewport progress: aProgressMorph

	| indices|
	indices := self chunkIndicesIn: aViewport coordBounds.
	
	aProgressMorph label: 'Loading Chunks'.
	aProgressMorph incrDone: 0.25.
	aProgressMorph subLabel: (aProgressMorph done * 100) asString , ' %'.
	
	(self downloadMissingChunksFor: indices) keysAndValuesDo: [:index :chunk |
		aViewport addChunk: chunk].
	
	aProgressMorph label: 'Applying Configuration'.
	aProgressMorph incrDone: 0.5.
	aProgressMorph subLabel: (aProgressMorph done * 100) asString , ' %'.
	
	self applyConfiguration.
	
	aProgressMorph label: 'Rendering to Viewport'.
	aProgressMorph incrDone: 0.75.
	aProgressMorph subLabel: (aProgressMorph done * 100) asString , ' %'.
	
	aViewport render.

	aProgressMorph label: 'Finished'.
	aProgressMorph incrDone: 1.0.
	aProgressMorph subLabel: (aProgressMorph done * 100) asString , ' %'.	
