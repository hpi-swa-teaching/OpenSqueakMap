running
testInvalidDocuments

	self should: [OSMParser parse: self class invalidDocumentNoOSMTag] raise: Error.
	self should: [OSMParser parse: self class invalidDocumentNoClosingTag] raise: Error.
	self should: [OSMParser parse: self class invalidDocumentUnexpectedTag] raise: Error.