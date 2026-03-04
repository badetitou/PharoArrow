Class {
	#name : 'PharoArrowLibrary',
	#superclass : 'FFILibrary',
	#category : 'PharoArrow',
	#package : 'PharoArrow'
}

{ #category : 'builder' }
PharoArrowLibrary >> garrow_array_builder_finish: builder error: errorPtrOrNull [

	^ self ffiCall: 'void* garrow_array_builder_finish (void* builder, void* errorPtrOrNull)'
]

{ #category : 'field' }
PharoArrowLibrary >> garrow_field_new: name dataType: data_type [

	^ self ffiCall: 'void* garrow_field_new (char* name, void* data_type)'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_int32_array_builder: builder _append_value: value error: error [

	^ self ffiCall: 'Boolean garrow_int32_array_builder_append_value( void * builder, int value, void * error)'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_int32_array_builder_new [

	^ self ffiCall: 'void * garrow_int32_array_builder_new()'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_int64_array_builder: builder _append_value: value error: error [

	^ self ffiCall: 'Boolean garrow_int64_array_builder_append_value( void * builder, int value, void * error)'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_int64_array_builder_new [

	^ self ffiCall: 'void * garrow_int64_array_builder_new()'
]

{ #category : 'datatype' }
PharoArrowLibrary >> garrow_int64_data_type_new [

	^ self ffiCall: 'void * garrow_int64_data_type_new()'
]

{ #category : 'field' }
PharoArrowLibrary >> garrow_schema_new: fields [

	^ self ffiCall: 'void* garrow_schema_new (void* fields)'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_string_array_builder: builder _append_string: value error: error [

	^ self ffiCall: 'Boolean garrow_string_array_builder_append_string( void * builder, char* value, void * error)'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_string_array_builder_new [

	^ self ffiCall: 'void * garrow_string_array_builder_new()'
]

{ #category : 'datatype' }
PharoArrowLibrary >> garrow_string_data_type_new [

	^ self ffiCall: 'void * garrow_string_data_type_new()'
]

{ #category : 'table' }
PharoArrowLibrary >> garrow_table_new_values: schema values: values error: errorOrNil [

	^ self ffiCall: 'void* garrow_table_new_values (void* schema, void* values, void* errorOrNil)'
]

{ #category : 'accessing - platform' }
PharoArrowLibrary >> macLibraryName [
	"Users should use unix32* or unix64*"

	^ FFIMacLibraryFinder findAnyLibrary:
		  #( 'libarrow-glib.dylib' )
]
