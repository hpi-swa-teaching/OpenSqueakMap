as yet unclassified
loadFromDocument: aFileName

	^ self load: (aFileName asXMLFileHandle streamGetUpToLimit: nil decoding: false)