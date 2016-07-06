accessing
osmEntity: anObject
	osmEntity := anObject.
	(osmEntity tags at: #name ifAbsent: [nil]) ifNotNil: [:name | self name: name].