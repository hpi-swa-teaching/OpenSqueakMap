as yet unclassified
testInvalidDocuments

	self should: [OSMParser parse: self invalidDocumentNoOSMTag] raise: Error.
	self should: [OSMParser parse: self invalidDocumentNoClosingTag] raise: Error.
	self should: [OSMParser parse: self invalidDocumentUnexpectedTag] raise: Error.