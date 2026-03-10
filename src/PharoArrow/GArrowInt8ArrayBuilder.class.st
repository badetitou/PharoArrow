Class {
	#name : 'GArrowInt8ArrayBuilder',
	#superclass : 'GArrowArrayBuilder',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowInt8ArrayBuilder >> append: aValue error: errorOrNil [

	^ PharoArrowLibrary uniqueInstance
		  garrow_int8_array_builder: self
		  _append_value: aValue
		  error: errorOrNil
]

{ #category : 'accessing' }
GArrowInt8ArrayBuilder >> finish [

	^ PharoArrowLibrary uniqueInstance
		  garrow_array_int8_builder_finish: self
		  error: nil
]
