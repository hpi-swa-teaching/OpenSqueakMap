as yet unclassified
initialize 

	super initialize.
	self viewport: (Morph new
		extent: 1000@500;
		openInWorld).
	self viewport clipSubmorphs: true.