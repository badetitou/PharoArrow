Class {
	#name : 'GArrowChunkedArray',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'private' }
GArrowChunkedArray >> booleanChunk: chunkIndex [

	^ self
		  ffiCall:
		  'GArrowBooleanArray * garrow_chunked_array_get_chunk(GArrowChunkedArray * self, int chunkIndex)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'accessing' }
GArrowChunkedArray >> chunk: chunkIndex [

	| name |
	name := self dataType name.
	name = 'int64' ifTrue: [ ^ self int64Chunk: chunkIndex ].
	name = 'int32' ifTrue: [ ^ self int32Chunk: chunkIndex ].
	name = 'int8' ifTrue: [ ^ self int8Chunk: chunkIndex ].
	name = 'utf8' ifTrue: [ ^ self stringChunk: chunkIndex ].
	name = 'float' ifTrue: [ ^ self floatChunk: chunkIndex ].
	name = 'bool' ifTrue: [ ^ self booleanChunk: chunkIndex ].
	^ self rawChunk: chunkIndex
]

{ #category : 'acccessing' }
GArrowChunkedArray >> dataType [

	^ self
		  ffiCall:
		  'GArrowDataType * garrow_chunked_array_get_value_data_type(GArrowChunkedArray * self)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'private' }
GArrowChunkedArray >> floatChunk: chunkIndex [

	^ self
		  ffiCall:
		  'GArrowFloatArray * garrow_chunked_array_get_chunk(GArrowChunkedArray * self, int chunkIndex)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'private' }
GArrowChunkedArray >> int32Chunk: chunkIndex [

	^ self
		  ffiCall:
		  'GArrowInt32Array * garrow_chunked_array_get_chunk(GArrowChunkedArray * self, int chunkIndex)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'private' }
GArrowChunkedArray >> int64Chunk: chunkIndex [

	^ self
		  ffiCall:
		  'GArrowInt64Array * garrow_chunked_array_get_chunk(GArrowChunkedArray * self, int chunkIndex)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'private' }
GArrowChunkedArray >> int8Chunk: chunkIndex [

	^ self
		  ffiCall:
		  'GArrowInt8Array * garrow_chunked_array_get_chunk(GArrowChunkedArray * self, int chunkIndex)'
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

{ #category : 'private' }
GArrowChunkedArray >> rawChunk: chunkIndex [

	^ self
		  ffiCall:
		  'GArrowArray * garrow_chunked_array_get_chunk(GArrowChunkedArray * self, int chunkIndex)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'private' }
GArrowChunkedArray >> stringChunk: chunkIndex [

	^ self
		  ffiCall:
		  'GArrowStringArray * garrow_chunked_array_get_chunk(GArrowChunkedArray * self, int chunkIndex)'
		  library: PharoArrowLibrary uniqueInstance
]
