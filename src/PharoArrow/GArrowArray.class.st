Class {
	#name : 'GArrowArray',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowArray >> at: index [

	^ Error signal: 'method not implemented for abstract version'
]

{ #category : 'accessing' }
GArrowArray >> length [

	^ self
		  ffiCall: 'int64 garrow_array_get_length(GArrowArray * self)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'accessing' }
GArrowArray >> toString: errorHandlerOrNil [
	"should be String garrow_array_to_string(GArrowTable *table, GError **error)"

	^ self
		  ffiCall:
		  'String garrow_array_to_string(GArrowArray * self, void * errorHandlerOrNil)'
		  library: PharoArrowLibrary uniqueInstance
]
