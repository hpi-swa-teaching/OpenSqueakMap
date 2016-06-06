as yet unclassified
chunkIndicesIn: aViewportRectangle
	"TODO: calculate which indices (i.e. points) the rectangle corners translate to, then collect all in range"
	
	| r indices |
	indices := OrderedCollection new.
	r := (aViewportRectangle translateBy: 180@90) / self class chunkSize.
	r left floor to: r right ceiling do: [:x |
		r bottom floor to: r top ceiling do: [:y |
			indices add: x@y]].
	^ indices.