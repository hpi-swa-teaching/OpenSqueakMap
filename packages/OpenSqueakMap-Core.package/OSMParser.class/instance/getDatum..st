handling - content
getDatum: anId

	^ self dataSet content at: anId ifAbsent: [^ nil].