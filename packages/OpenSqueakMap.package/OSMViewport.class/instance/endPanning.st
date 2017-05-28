actions
endPanning

	| panEndPos panVector |
	self isPanning ifFalse: [^ self].
	self isPanning: false.
	panEndPos := Sensor mousePoint - self topLeft.
	panEndPos = self panStartPos ifTrue: [^ self]. 
	panVector := self getPanVectorFrom: panStartPos to: panEndPos.
	self moveViewportBy: panVector.