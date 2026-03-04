Class {
	#name : 'PharoParquetLibrary',
	#superclass : 'FFILibrary',
	#category : 'PharoArrow',
	#package : 'PharoArrow'
}

{ #category : 'accessing - platform' }
PharoParquetLibrary >> gparquet_arrow_file_writer_close: writer error: errorPtrOrNil [

	^ self ffiCall:
		  'int gparquet_arrow_file_writer_close (void* writer, void* errorPtrOrNil)'
]

{ #category : 'accessing - platform' }
PharoParquetLibrary >> gparquet_arrow_file_writer_new_path: schema path: path writerProperties: writer_properties error: error [

	^ self ffiCall:
		  'void* gparquet_arrow_file_writer_new_path (void* schema, char* path, void* writer_properties, void* error)'
]

{ #category : 'accessing - platform' }
PharoParquetLibrary >> gparquet_arrow_file_writer_write_table: writer table: table chunkSize: chunkSize error: errorPtrOrNull [

	^ self ffiCall:
		  'int gparquet_arrow_file_writer_write_table (void* writer, void* table, ulong chunkSize, void* errorPtrOrNull)'
]

{ #category : 'accessing - platform' }
PharoParquetLibrary >> macLibraryName [
	"Users should use unix32* or unix64*"

	^ FFIMacLibraryFinder findAnyLibrary:
		  #( 'libparquet-glib.dylib' )
]
