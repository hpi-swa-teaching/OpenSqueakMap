rendering
render
	
	self dataSet ways do: [:way | self renderWay: way].
	self dataSet nodes do: [:node | self renderNode: node].
	self dataSet relations do: [:relation | self renderRelation: relation].