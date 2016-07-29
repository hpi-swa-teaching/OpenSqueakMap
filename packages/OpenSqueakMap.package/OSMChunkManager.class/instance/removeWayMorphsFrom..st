chunk assignment
removeWayMorphsFrom: aChunk

	aChunk wayMorphs do: [:way |
		(self renderingChunkFor: way) = aChunk
			ifTrue: [(self backupChunksFor: way)
				ifEmpty: [way delete]
				ifNotEmpty: [self switchRenderingChunkFor: way from: aChunk]]
			ifFalse: [(self backupChunksFor: way) remove: aChunk]].