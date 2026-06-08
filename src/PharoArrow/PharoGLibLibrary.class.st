Class {
	#name : 'PharoGLibLibrary',
	#superclass : 'FFILibrary',
	#category : 'PharoArrow-Library',
	#package : 'PharoArrow',
	#tag : 'Library'
}

{ #category : 'accessing - platform' }
PharoGLibLibrary >> g_bytes_get_data: bytes size: sizePointer [

	^ self ffiCall:
		  'void* g_bytes_get_data (void* bytes, ByteArray sizePointer)'
]

{ #category : 'accessing - platform' }
PharoGLibLibrary >> g_bytes_new: data size: size [

	^ self ffiCall: 'void* g_bytes_new (ByteArray data, ulong size)'
]

{ #category : 'accessing - platform' }
PharoGLibLibrary >> g_bytes_unref: bytes [

	^ self ffiCall: 'void g_bytes_unref (void* bytes)'
]

{ #category : 'accessing - platform' }
PharoGLibLibrary >> g_list_append: list with: data [

	^ self ffiCall: 'GList * g_list_append (void* list, void* data)'
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

{ #category : 'accessing - platform' }
PharoGLibLibrary >> unixLibraryName [

	^'libglib-2.0'
]
