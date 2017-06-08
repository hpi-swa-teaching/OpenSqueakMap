building
buildInputFieldWith: aBuilder

	| inputFieldSpec |
	inputFieldSpec := aBuilder pluggableInputFieldSpec new.
	^ inputFieldSpec model: self.