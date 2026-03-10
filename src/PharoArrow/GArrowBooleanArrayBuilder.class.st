Class {
	#name : 'GArrowBooleanArrayBuilder',
	#superclass : 'GArrowArrayBuilder',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowBooleanArrayBuilder >> append: aValue error: errorOrNil [

	^ PharoArrowLibrary uniqueInstance
		  garrow_boolean_array_builder: self
		  _append_value: aValue
		  error: errorOrNil
]

{ #category : 'accessing' }
GArrowBooleanArrayBuilder >> finish [

	^ PharoArrowLibrary uniqueInstance
		  garrow_array_boolean_builder_finish: self
		  error: nil
]
