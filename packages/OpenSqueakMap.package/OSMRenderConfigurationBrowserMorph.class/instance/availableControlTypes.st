model access
availableControlTypes 
	
	^ self attributeControlTypes associationsSelect: [:aType | self model selectedTypeAttributes includes: aType key].