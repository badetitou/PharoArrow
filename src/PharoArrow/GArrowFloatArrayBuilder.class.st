Class {
	#name : 'GArrowFloatArrayBuilder',
	#superclass : 'GArrowArrayBuilder',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowFloatArrayBuilder >> append: aValue error: errorOrNil [

	^ PharoArrowLibrary uniqueInstance
		  garrow_float_array_builder: self
		  _append_value: aValue
		  error: errorOrNil
]

{ #category : 'accessing' }
GArrowFloatArrayBuilder >> finish [

	^ PharoArrowLibrary uniqueInstance
		  garrow_array_float_builder_finish: self
		  error: nil
]
