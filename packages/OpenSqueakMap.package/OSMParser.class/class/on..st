instance creation
on: aStringOrStream

	^ (super on: aStringOrStream) optimizeForLargeDocuments.