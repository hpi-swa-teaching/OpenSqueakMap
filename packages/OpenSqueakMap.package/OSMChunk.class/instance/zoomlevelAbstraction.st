helper
zoomlevelAbstraction 
	^ zoomlevelAbstraction ifNil: [
		zoomlevelAbstraction := Dictionary newFromPairs: {
		14 . (Set new 
					add: 'motorway'; 
					add: 'trunk'; 
					add: 'primary'; 
					yourself).
		15 . (Set new 
					add: 'motorway'; 
					add: 'trunk'; 
					add: 'primary'; 
					add: 'secondary'; 
					yourself).
		16 . (Set new 
					add: 'motorway'; 
					add: 'trunk'; 
					add: 'primary'; 
					add: 'secondary'; 
					add: 'tertiary'; 
					yourself).
		17 . (Set new 
					add: 'motorway'; 
					add: 'trunk'; 
					add: 'primary';
					add: 'secondary'; 
					add: 'tertiary'; 
					add: 'residential'; 
					yourself).
		18 . (Set new 
					add: 'motorway';
					add: 'trunk'; 
					add: 'primary'; 
					add: 'secondary'; 
					add: 'tertiary'; 
					add: 'residential';
					add: 'cycleway'; 
					add: 'track'; 
					add: 'service';
					add: 'path'; 
					add: 'footway'; 
					yourself).
		19 . (Set new 
					add: 'motorway'; 
					add: 'trunk'; 
					add: 'primary'; 
					add: 'secondary'; 
					add: 'tertiary'; 
					add: 'residential'; 
					add: 'cycleway';
					add: 'track'; 
					add: 'service'; 
					add: 'path'; 
					add: 'footway'; 
					yourself).
		20 . (Set new 
					add: 'motorway'; 
					add: 'trunk'; 
					add: 'primary'; 
					add: 'secondary'; 
					add: 'tertiary'; 
					add: 'residential'; 
					add: 'cycleway';
					add: 'track'; 
					add: 'service'; 
					add: 'path'; 
					add: 'footway'; 
					yourself).
		}].
		