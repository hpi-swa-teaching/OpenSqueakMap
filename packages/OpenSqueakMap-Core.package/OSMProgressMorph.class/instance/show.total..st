as yet unclassified
show: aString total: anInt

	self 
		label: aString;
		total: anInt;
		currentItem: 0;
		updateSubLabel;
		updatePercentage;
		show.