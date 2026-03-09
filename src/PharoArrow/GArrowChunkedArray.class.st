Class {
	#name : 'GArrowChunkedArray',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'as yet unclassified' }
GArrowChunkedArray >> dataType [

	^ self
		  ffiCall:
		  'GArrowDataType * garrow_chunked_array_get_value_data_type(GArrowChunkedArray * self)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'as yet unclassified' }
GArrowChunkedArray >> numberOfRows [

	^ self
		  ffiCall:
		  'int garrow_chunked_array_get_n_rows(GArrowChunkedArray * self)'
		  library: PharoArrowLibrary uniqueInstance
]
