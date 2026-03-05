Class {
	#name : 'GArrowSchema',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'instance creation' }
GArrowSchema class >> on: aGListOfFields [

	self
		ffiCall: 'GArrowSchema * garrow_schema_new(GList *fields)'
		library: PharoArrowLibrary uniqueInstance
]

{ #category : 'accessing' }
GArrowSchema >> fieldAt: index [

	self
		ffiCall: 'GArrowField * garrow_schema_get_field(GArrowSchema * self, int index)'
		library: PharoArrowLibrary uniqueInstance
]

{ #category : 'accessing' }
GArrowSchema >> fieldNamed: name [

	self
		ffiCall: 'GArrowField * garrow_schema_get_field_by_name(GArrowSchema * self, String name)'
		library: PharoArrowLibrary uniqueInstance
]

{ #category : 'accessing' }
GArrowSchema >> indexOfFieldNamed: name [

	self
		ffiCall:
		'int garrow_schema_get_field_index(GArrowSchema * self, String name)'
		library: PharoArrowLibrary uniqueInstance
]

{ #category : 'accessing' }
GArrowSchema >> numberOfFields [

	self
		ffiCall: 'int garrow_schema_n_fields(GArrowSchema * self)'
		library: PharoArrowLibrary uniqueInstance
]

{ #category : 'accessing' }
GArrowSchema >> removeFieldAt: index [

	^ self removeFieldAt: index error: nil
]

{ #category : 'accessing' }
GArrowSchema >> removeFieldAt: index error: error [
	"should be GArrowSchema * garrow_schema_remove_field(GArrowSchema * self, int index, GError **error)"

	^ self
		  ffiCall:
		  'GArrowSchema * garrow_schema_remove_field(GArrowSchema * self, int index, void * error)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'accessing' }
GArrowSchema >> toString [

	^ self
		  ffiCall: 'String garrow_schema_to_string(GArrowSchema * self)'
		  library: PharoArrowLibrary uniqueInstance
]
