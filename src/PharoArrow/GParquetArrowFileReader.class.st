Class {
	#name : 'GParquetArrowFileReader',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-ParquetReader',
	#package : 'PharoArrow',
	#tag : 'ParquetReader'
}

{ #category : 'as yet unclassified' }
GParquetArrowFileReader class >> on: path error: error [

	^ self
		  ffiCall:
		  'GParquetArrowFileReader * gparquet_arrow_file_reader_new_path( String path, void * error)'
		  library: PharoParquetLibrary uniqueInstance
]

{ #category : 'accessing' }
GParquetArrowFileReader >> readTable [

	^ self readTableWithError: nil
]

{ #category : 'accessing' }
GParquetArrowFileReader >> readTableWithError: error [

	^ self
		  ffiCall:
		  'GArrowTable * gparquet_arrow_file_reader_read_table(GParquetArrowFileReader * self, void * error)'
		  library: PharoParquetLibrary uniqueInstance
]

{ #category : 'accessing' }
GParquetArrowFileReader >> schema [

	^ self
		  ffiCall:
		  'GArrowSchema * gparquet_arrow_file_reader_get_schema(GParquetArrowFileReader * self)'
		  library: PharoParquetLibrary uniqueInstance
]
