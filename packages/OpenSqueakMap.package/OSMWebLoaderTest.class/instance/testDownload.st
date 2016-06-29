as yet unclassified
testDownload

	| b data |
	b := self exampleBounds.
	data := (OSMChunk new coordBounds: b; download) dataSet.