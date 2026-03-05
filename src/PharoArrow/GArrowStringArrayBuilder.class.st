Class {
	#name : 'GArrowStringArrayBuilder',
	#superclass : 'GArrowArrayBuilder',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowStringArrayBuilder >> append: aValue error: errorOrNil [

	^ PharoArrowLibrary uniqueInstance
		  garrow_string_array_builder: self
		  _append_string: aValue
		  error: errorOrNil
]

{ #category : 'accessing' }
GArrowStringArrayBuilder >> finish [

	^ PharoArrowLibrary uniqueInstance
		  garrow_array_string_builder_finish: self
		  error: nil
]
