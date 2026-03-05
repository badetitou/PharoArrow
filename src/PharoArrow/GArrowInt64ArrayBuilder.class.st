Class {
	#name : 'GArrowInt64ArrayBuilder',
	#superclass : 'GArrowArrayBuilder',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowInt64ArrayBuilder >> append: aValue error: errorOrNil [

	^ PharoArrowLibrary uniqueInstance
		  garrow_int64_array_builder: self
		  _append_value: aValue
		  error: errorOrNil
]

{ #category : 'accessing' }
GArrowInt64ArrayBuilder >> finish [

	^ PharoArrowLibrary uniqueInstance
		  garrow_array_int64_builder_finish: self
		  error: nil
]
