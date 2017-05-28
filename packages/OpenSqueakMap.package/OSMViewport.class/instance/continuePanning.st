actions
continuePanning

	| panEndPos panVector |
	self isPanning ifFalse: [^ self].
	
	panEndPos := Sensor mousePoint - self topLeft.
	panEndPos = self panStartPos ifTrue: [^ self]. 
	panVector := self getPanVectorFrom: panStartPos to: panEndPos.
	self moveViewportBy: panVector;
		panStartPos: Sensor mousePoint - self topLeft.