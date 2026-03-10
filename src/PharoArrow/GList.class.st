Class {
	#name : 'GList',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-GLib',
	#package : 'PharoArrow',
	#tag : 'GLib'
}

{ #category : 'copying' }
GList >> , field [

	^ self
		  ffiCall: 'GList * g_list_append (void* self , void* field)'
		  library: PharoGLibLibrary uniqueInstance
]
