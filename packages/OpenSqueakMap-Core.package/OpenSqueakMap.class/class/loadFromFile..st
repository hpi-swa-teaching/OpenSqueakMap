as yet unclassified
loadFromFile: aFileName

	^ self load: (aFileName asXMLFileHandle streamGetUpToLimit: nil decoding: false)