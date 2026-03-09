Class {
	#name : 'GArrowLocalFileSystemOptions',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-ArrowFileSystem',
	#package : 'PharoArrow',
	#tag : 'ArrowFileSystem'
}

{ #category : 'instance creation' }
GArrowLocalFileSystemOptions class >> newOptions [

	self
		ffiCall:
		'GArrowLocalFileSystemOptions * garrow_local_file_system_options_new()'
		library: PharoArrowLibrary uniqueInstance
]
