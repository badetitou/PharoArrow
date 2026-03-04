Class {
	#name : 'PharoGLibLibrary',
	#superclass : 'FFILibrary',
	#category : 'PharoArrow',
	#package : 'PharoArrow'
}

{ #category : 'accessing - platform' }
PharoGLibLibrary >> g_list_append: list with: data [

	^ self ffiCall: 'void* g_list_append (void* list, void* data)'
]

{ #category : 'accessing - platform' }
PharoGLibLibrary >> g_list_free: list [

	^ self ffiCall: 'void g_list_free (void* list)'
]

{ #category : 'accessing - platform' }
PharoGLibLibrary >> macLibraryName [
	"Users should use unix32* or unix64*"

	^ FFIMacLibraryFinder findAnyLibrary:
		  #( 'libglib-2.0.0.dylib' )
]
