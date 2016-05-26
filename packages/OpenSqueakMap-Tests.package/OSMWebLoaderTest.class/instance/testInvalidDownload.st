as yet unclassified
testInvalidDownload

	| b data |
	self should: [
		b := self invalidBounds.
		data := OSMWebLoader new downloadBoundedMapS: b bottom w: b left n: b top e: b right.
		data := OSMParser parse: data]
	raise: Error.