as yet unclassified
testDownload

	| b data |
	b := self exampleBounds.
	data := OSMWebLoader new downloadBoundedMapS: b bottom w: b left n: b top e: b right.
	data := OSMParser parse: data.