as yet unclassified
testInvalidDownload

	| b data |
	self should: [
		b := self invalidBounds.
		data := (OSMChunk new coordBounds: b; tryDownload) dataSet.]
	raise: OSMApiException.