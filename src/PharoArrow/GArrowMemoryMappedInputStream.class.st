Class {
	#name : 'GArrowMemoryMappedInputStream',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-ArrowReader',
	#package : 'PharoArrow',
	#tag : 'ArrowReader'
}

{ #category : 'as yet unclassified' }
GArrowMemoryMappedInputStream class >> on: aStringPath withError: error [

	^ self
		  ffiCall:
		  'GArrowMemoryMappedInputStream * garrow_memory_mapped_input_stream_new(String aStringPath, void *error)'
		  library: PharoArrowLibrary uniqueInstance
]
