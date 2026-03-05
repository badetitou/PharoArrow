Class {
	#name : 'GArrowFileInputStream',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-ArrowReader',
	#package : 'PharoArrow',
	#tag : 'ArrowReader'
}

{ #category : 'as yet unclassified' }
GArrowFileInputStream class >> on: pathString withError: error [
	"should be GArrowFileInputStream * garrow_file_input_stream_new(String pathString, GError **error)"

	^ self
		  ffiCall:
		  'GArrowFileInputStream * garrow_file_input_stream_new(String pathString, void *error)'
		  library: PharoArrowLibrary uniqueInstance
]
