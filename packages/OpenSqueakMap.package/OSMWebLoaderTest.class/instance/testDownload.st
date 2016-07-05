as yet unclassified
testDownload

	<timeout: 60>
	| b data |
	b := self exampleBounds.
	data := (OSMChunk new coordBounds: b; download) dataSet.