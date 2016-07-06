as yet unclassified
testInvalidDownload

	<timeout: 60>
	| b data |
	self should: [
		b := self invalidBounds.
		data := (OSMChunk new coordBounds: b; tryDownload) dataSet.]
	raise: OSMApiException.