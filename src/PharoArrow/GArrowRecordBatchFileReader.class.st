Class {
	#name : 'GArrowRecordBatchFileReader',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-ArrowReader',
	#package : 'PharoArrow',
	#tag : 'ArrowReader'
}

{ #category : 'as yet unclassified' }
GArrowRecordBatchFileReader class >> on: inputStream withError: error [

	^ self
		  ffiCall:
		  'GArrowRecordBatchFileReader * garrow_record_batch_file_reader_new(void * inputStream, void * error)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'as yet unclassified' }
GArrowRecordBatchFileReader >> schema [

	^ self
		  ffiCall:
		  'GArrowSchema * garrow_record_batch_file_reader_get_schema(GArrowRecordBatchFileReader * self)'
		  library: PharoArrowLibrary uniqueInstance
]
