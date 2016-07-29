as yet unclassified
testInvalidDownload

	<timeout: 60>
	| b data query |
	self should: [
		b := self invalidBounds.
		query := OSMDownloadConfiguration defaultConfiguration queryStringFor: OpenSqueakMap defaultZoomLevel bounds: b.
		data := (OSMChunk new coordBounds: b; tryDownload: query) dataSet.]
	raise: OSMApiException.