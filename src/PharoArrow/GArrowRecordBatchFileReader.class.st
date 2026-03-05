Class {
	#name : 'GArrowRecordBatchFileReader',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-ArrowReader',
	#package : 'PharoArrow',
	#tag : 'ArrowReader'
}

{ #category : 'as yet unclassified' }
GArrowRecordBatchFileReader class >> on: memoryMappedInputStream withError: error [

	^ self
		  ffiCall:
		  'GArrowRecordBatchFileReader * garrow_record_batch_file_reader_new(GArrowMemoryMappedInputStream * memoryMappedInputStream, void * error)'
		  library: PharoArrowLibrary uniqueInstance
]
