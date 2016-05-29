as yet unclassified
addButtons
	self addMorph: (SimpleButtonMorph new
		label: '<';
		target: self osm;
		actionSelector: #panLeft;
		position: 0@(self extent y / 2));
		addMorph: (SimpleButtonMorph new
		label: '^';
		target: self osm;
		actionSelector: #panUp;
		position: (self extent x/2)@(self bounds origin y));
		addMorph: (SimpleButtonMorph new
		label: '>';
		target: self osm;
		actionSelector: #panRight;
		position: (self extent x - 16)@(self extent y / 2));
		addMorph: (SimpleButtonMorph new
		label: 'v';
		target: self osm;
		actionSelector: #panDown;
		position: (self extent x/2)@(self extent y)).
		
	self addMorph: (SimpleButtonMorph new
		label: '+';
		target: self osm;
		actionSelector: #zoomIn;
		position: 15@15);
		addMorph: (SimpleButtonMorph new
		label: ' - ';
		target: self osm;
		actionSelector: #zoomOut;
		position: 35@15).