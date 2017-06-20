accessing
typeList
	
	^ typeList ifNil: [OrderedCollection new
		addAll: self renderConfiguration rules keys;
		yourself].