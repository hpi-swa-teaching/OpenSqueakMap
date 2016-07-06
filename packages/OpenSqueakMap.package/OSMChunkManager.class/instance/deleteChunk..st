as yet unclassified
deleteChunk: aChunk

	aChunk ways do: [:way |
		(self renderingChunks at: way id) = aChunk
			ifTrue: [self backupChunks ifNotEmpty:
				[self switchRenderingChunkFor: way id from: aChunk]]
			ifFalse: [(self backupChunksFor: way id) remove: aChunk]].
	aChunk delete.