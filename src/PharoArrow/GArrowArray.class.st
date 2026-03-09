Class {
	#name : 'GArrowArray',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'as yet unclassified' }
GArrowArray class >> typeFor: aTypeString [

	name := aTypeString name.
	name = 'int64' ifTrue: [ ^ GArrowInt64Array ].
	name = 'int32' ifTrue: [ ^ GArrowInt32Array ].
	name = 'utf8' ifTrue: [ ^ GArrowStringArray ].
	name = 'float' ifTrue: [ ^ GArrowFloatArray ].
	^ self
]

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
