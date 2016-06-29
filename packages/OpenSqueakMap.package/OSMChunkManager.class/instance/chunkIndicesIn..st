as yet unclassified
chunkIndicesIn: aViewportRectangle

	| r indices |
	indices := OrderedCollection new.
	r := (aViewportRectangle translateBy: 180@90) / self class chunkSize.
	r left floor to: r right floor do: [:x |
		r bottom floor to: r top floor do: [:y |
			indices add: x@y]].
	^ indices.