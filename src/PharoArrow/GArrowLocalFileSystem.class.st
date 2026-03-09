Class {
	#name : 'GArrowLocalFileSystem',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-ArrowFileSystem',
	#package : 'PharoArrow',
	#tag : 'ArrowFileSystem'
}

{ #category : 'instance creation' }
GArrowLocalFileSystem class >> on: options [

	self
		ffiCall:
		'GArrowLocalFileSystem * garrow_local_file_system_new(void *options)'
		library: PharoArrowLibrary uniqueInstance
]

{ #category : 'as yet unclassified' }
GArrowLocalFileSystem >> openInputFile: path error: error [

	^ self
		  ffiCall:
		  'GArrowSeekableInputStream * garrow_file_system_open_input_file(GArrowLocalFileSystem * self, String * path, void * error)'
		  library: PharoArrowLibrary uniqueInstance
]
