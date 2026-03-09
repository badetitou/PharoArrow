Class {
	#name : 'GArrowChunkedArray',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'acccessing' }
GArrowChunkedArray >> chunk: chunkIndex [
	

	^ self
		  chunk:
		  chunkIndex
		  as: (GArrowArray typeFor: self dataType)
]

{ #category : 'private' }
GArrowChunkedArray >> chunk: chunkIndex as: className [

	^ self
		  ffiCall:
		  className name, ' * garrow_chunked_array_get_chunk(GArrowChunkedArray * self, int chunkIndex)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'acccessing' }
GArrowChunkedArray >> dataType [

	^ self
		  ffiCall:
		  'GArrowDataType * garrow_chunked_array_get_value_data_type(GArrowChunkedArray * self)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'acccessing' }
GArrowChunkedArray >> numberOfChunks [

	^ self
		  ffiCall:
		  'int garrow_chunked_array_get_n_chunks(GArrowChunkedArray * self)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'acccessing' }
GArrowChunkedArray >> numberOfRows [

	^ self
		  ffiCall:
		  'int garrow_chunked_array_get_n_rows(GArrowChunkedArray * self)'
		  library: PharoArrowLibrary uniqueInstance
]
