as yet unclassified
chunkIndicesIn: aViewportRectangle

	| r indices |
	r := aViewportRectangle toChunkIndexSpace.
	indices := OrderedCollection new.
	r left to: r right do: [:x |
		r bottom to: r top do: [:y |
			indices add: x@y]].
	^ indices.