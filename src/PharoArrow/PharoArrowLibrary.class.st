Class {
	#name : 'PharoArrowLibrary',
	#superclass : 'FFILibrary',
	#category : 'PharoArrow',
	#package : 'PharoArrow'
}

{ #category : 'accessing - platform' }
PharoArrowLibrary >> macLibraryName [
	"Users should use unix32* or unix64*"

	^ FFIMacLibraryFinder findAnyLibrary:
		  #( 'libarrow-glib.dylib' )
]
