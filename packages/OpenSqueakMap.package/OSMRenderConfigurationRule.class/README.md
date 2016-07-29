I am the abstract superclass of the rules that define the appearance of a RenderObject. 

Instance Variables
	filter:		<BlockClosure>

filter
	- A block that decides if I should be applied to a RenderObject. The RenderObject is passed as parameter; iff the block evaluates to true, I add my attributes to the RenderObject.