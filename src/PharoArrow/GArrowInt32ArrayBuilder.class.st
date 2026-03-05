Class {
	#name : 'GArrowInt32ArrayBuilder',
	#superclass : 'GArrowArrayBuilder',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowInt32ArrayBuilder >> append: aValue error: errorOrNil [

	^ PharoArrowLibrary uniqueInstance
		  garrow_int32_array_builder: self
		  _append_value: aValue
		  error: errorOrNil
]

{ #category : 'accessing' }
GArrowInt32ArrayBuilder >> finish [

	^ PharoArrowLibrary uniqueInstance
		  garrow_array_int32_builder_finish: self
		  error: nil
]
