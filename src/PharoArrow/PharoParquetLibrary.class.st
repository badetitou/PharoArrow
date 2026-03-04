Class {
	#name : 'PharoParquetLibrary',
	#superclass : 'FFILibrary',
	#category : 'PharoArrow',
	#package : 'PharoArrow'
}

{ #category : 'accessing - platform' }
PharoParquetLibrary >> macLibraryName [
	"Users should use unix32* or unix64*"

	^ FFIMacLibraryFinder findAnyLibrary:
		  #( 'libparquet-glib.dylib' )
]
