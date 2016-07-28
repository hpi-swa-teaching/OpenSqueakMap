I am a RenderConfigurationRule that can execute code on the RenderObject I am applied to. I am more powerful than the StaticRule, since I can directly manipulate the RenderObject.

Instance Variables
	attributeComputer:		<BlockClosure>

attributeComputer
	- Block that can manipulate a RenderObject. When I am applied to a RenderObject and my filter evaluates to true, the attributeComputer gets executed with the RenderObject as a parameter. The block could add renderAttributes, or it could directly set morphic properties of the RenderObject. If you choose to do the latter, keep in mind that when it gets rendered other renderAttributes might override your changes.