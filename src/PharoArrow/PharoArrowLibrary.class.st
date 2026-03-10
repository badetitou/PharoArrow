Class {
	#name : 'PharoArrowLibrary',
	#superclass : 'FFILibrary',
	#category : 'PharoArrow-Library',
	#package : 'PharoArrow',
	#tag : 'Library'
}

{ #category : 'builder - finish extended' }
PharoArrowLibrary >> garrow_array_boolean_builder_finish: builder error: errorPtrOrNull [

	^ self ffiCall:
		  'GArrowBooleanArray * garrow_array_builder_finish (void* builder, void* errorPtrOrNull)'
]

{ #category : 'builder add' }
PharoArrowLibrary >> garrow_array_builder_append_null: anyBuilder error: errorPtrOrNull [

	^ self ffiCall: 'int garrow_array_builder_append_null (void* anyBuilder, void* errorPtrOrNull)'
]

{ #category : 'builder - finish extended' }
PharoArrowLibrary >> garrow_array_builder_finish: builder error: errorPtrOrNull [

	^ self ffiCall:
		  'GArrowArray * garrow_array_builder_finish (void* builder, void* errorPtrOrNull)'
]

{ #category : 'builder - finish extended' }
PharoArrowLibrary >> garrow_array_float_builder_finish: builder error: errorPtrOrNull [

	^ self ffiCall:
		  'GArrowFloatArray * garrow_array_builder_finish (void* builder, void* errorPtrOrNull)'
]

{ #category : 'builder - finish extended' }
PharoArrowLibrary >> garrow_array_int32_builder_finish: builder error: errorPtrOrNull [

	^ self ffiCall:
		  'GArrowInt32Array * garrow_array_builder_finish (void* builder, void* errorPtrOrNull)'
]

{ #category : 'builder - finish extended' }
PharoArrowLibrary >> garrow_array_int64_builder_finish: builder error: errorPtrOrNull [

	^ self ffiCall:
		  'GArrowInt64Array * garrow_array_builder_finish (void* builder, void* errorPtrOrNull)'
]

{ #category : 'builder - finish extended' }
PharoArrowLibrary >> garrow_array_int8_builder_finish: builder error: errorPtrOrNull [

	^ self ffiCall:
		  'GArrowInt8Array * garrow_array_builder_finish (void* builder, void* errorPtrOrNull)'
]

{ #category : 'builder - finish extended' }
PharoArrowLibrary >> garrow_array_string_builder_finish: builder error: errorPtrOrNull [

	^ self ffiCall:
		  'GArrowStringArray * garrow_array_builder_finish (void* builder, void* errorPtrOrNull)'
]

{ #category : 'builder add' }
PharoArrowLibrary >> garrow_boolean_array_builder: builder _append_value: value error: error [

	^ self ffiCall: 'Boolean garrow_boolean_array_builder_append_value( void * builder, boolean value, void * error)'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_boolean_array_builder_new [

	^ self ffiCall: 'GArrowBooleanArrayBuilder * garrow_boolean_array_builder_new()'
]

{ #category : 'field' }
PharoArrowLibrary >> garrow_field_new: name dataType: data_type [

	^ self ffiCall: 'GArrowField * garrow_field_new (char* name, void* data_type)'
]

{ #category : 'builder add' }
PharoArrowLibrary >> garrow_float_array_builder: builder _append_value: value error: error [

	^ self ffiCall: 'Boolean garrow_float_array_builder_append_value( void * builder, float value, void * error)'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_float_array_builder_new [

	^ self ffiCall: 'GArrowFloatArrayBuilder * garrow_float_array_builder_new()'
]

{ #category : 'datatype' }
PharoArrowLibrary >> garrow_float_data_type_new [

	^ self ffiCall: 'void * garrow_float_data_type_new()'
]

{ #category : 'builder add' }
PharoArrowLibrary >> garrow_int32_array_builder: builder _append_value: value error: error [

	^ self ffiCall: 'Boolean garrow_int32_array_builder_append_value( void * builder, int value, void * error)'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_int32_array_builder_new [

	^ self ffiCall: 'GArrowInt32ArrayBuilder * garrow_int32_array_builder_new()'
]

{ #category : 'builder add' }
PharoArrowLibrary >> garrow_int64_array_builder: builder _append_value: value error: error [

	^ self ffiCall: 'Boolean garrow_int64_array_builder_append_value( void * builder, int value, void * error)'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_int64_array_builder_new [

	^ self ffiCall: 'GArrowInt64ArrayBuilder * garrow_int64_array_builder_new()'
]

{ #category : 'datatype' }
PharoArrowLibrary >> garrow_int64_data_type_new [

	^ self ffiCall: 'void * garrow_int64_data_type_new()'
]

{ #category : 'builder add' }
PharoArrowLibrary >> garrow_int8_array_builder: builder _append_value: value error: error [

	^ self ffiCall: 'Boolean garrow_int8_array_builder_append_value( void * builder, int value, void * error)'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_int8_array_builder_new [

	^ self ffiCall: 'GArrowInt8ArrayBuilder * garrow_int8_array_builder_new()'
]

{ #category : 'datatype' }
PharoArrowLibrary >> garrow_int8_data_type_new [

	^ self ffiCall: 'void * garrow_int8_data_type_new()'
]

{ #category : 'builder add' }
PharoArrowLibrary >> garrow_list_array_builder_append_value: builder error: errorPtrOrNull [

	^ self ffiCall: 'int garrow_list_array_builder_append_value (void* builder, void* errorPtrOrNull)'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_list_array_builder_get_value_builder: listBuilder [

	^ self ffiCall: 'void* garrow_list_array_builder_get_value_builder (void* listBuilder)'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_list_array_builder_new: data_type error: errorPtrOrNull [

	^ self ffiCall: 'void* garrow_list_array_builder_new (void* data_type, void* errorPtrOrNull)'
]

{ #category : 'datatype' }
PharoArrowLibrary >> garrow_list_data_type_new: valueField [

	^ self ffiCall: 'void * garrow_list_data_type_new(void * valueField)'
]

{ #category : 'field' }
PharoArrowLibrary >> garrow_schema_new: fields [

	^ self ffiCall: 'GArrowSchema * garrow_schema_new (void* fields)'
]

{ #category : 'builder add' }
PharoArrowLibrary >> garrow_string_array_builder: builder _append_string: value error: error [

	^ self ffiCall: 'Boolean garrow_string_array_builder_append_string( void * builder, char* value, void * error)'
]

{ #category : 'builder' }
PharoArrowLibrary >> garrow_string_array_builder_new [

	^ self ffiCall: 'GArrowStringArrayBuilder * garrow_string_array_builder_new()'
]

{ #category : 'datatype' }
PharoArrowLibrary >> garrow_string_data_type_new [

	^ self ffiCall: 'void * garrow_string_data_type_new()'
]

{ #category : 'table' }
PharoArrowLibrary >> garrow_table_new_values: schema values: values error: errorOrNil [

	^ self ffiCall: 'GArrowTable * garrow_table_new_values (GArrowSchema * schema, void* values, void* errorOrNil)'
]

{ #category : 'accessing - platform' }
PharoArrowLibrary >> macLibraryName [
	"Users should use unix32* or unix64*"

	^ FFIMacLibraryFinder findAnyLibrary:
		  #( 'libarrow-glib.dylib' )
]
