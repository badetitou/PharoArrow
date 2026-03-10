Class {
	#name : 'GArrowArrayBuilder',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'testing' }
GArrowArrayBuilder class >> isAbstract [

	^ self == GArrowArrayBuilder
]

{ #category : 'accessing' }
GArrowArrayBuilder >> append: aValue [

	^ self append: aValue error: nil
]

{ #category : 'accessing' }
GArrowArrayBuilder >> append: aValue error: errorOrNil [

	^ self subclassResponsibility
]

{ #category : 'accessing' }
GArrowArrayBuilder >> appendNull [

	^ self appendNull: nil
]

{ #category : 'accessing' }
GArrowArrayBuilder >> appendNull: error [

	^ self
		  ffiCall:
		  'Boolean garrow_array_builder_append_null(GArrowArrayBuilder * self, void * error)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'accessing' }
GArrowArrayBuilder >> finish [

	^ PharoArrowLibrary uniqueInstance
		  garrow_array_builder_finish: self
		  error: nil
]
