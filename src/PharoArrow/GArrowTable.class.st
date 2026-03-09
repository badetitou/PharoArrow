Class {
	#name : 'GArrowTable',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowTable >> column: index [

	^ self
		  ffiCall:
		  'GArrowChunkedArray * garrow_table_get_column_data (void * self, int index)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'accessing' }
GArrowTable >> dataOfColumns: index [

	^ self
		  ffiCall:
		  'GArrowChunkedArray * garrow_table_get_column_data(GArrowTable *self, int index)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'accessing' }
GArrowTable >> numberOfColumns [

	^ self
		  ffiCall: 'int garrow_table_get_n_columns(GArrowTable * self)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'accessing' }
GArrowTable >> numberOfRows [

	^ self
		  ffiCall: 'int garrow_table_get_n_rows(GArrowTable * self)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'accessing' }
GArrowTable >> schema [

	^ self
		  ffiCall:
		  'GArrowSchema * garrow_table_get_schema(GArrowTable * self)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'printing' }
GArrowTable >> toString: errorHandlerOrNil [
	"should be String garrow_table_to_string(GArrowTable *table, GError **error)"

	^ self
		  ffiCall:
		  'String garrow_table_to_string(GArrowTable * self, void * errorHandlerOrNil)'
		  library: PharoArrowLibrary uniqueInstance
]
