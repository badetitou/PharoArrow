Class {
	#name : 'GArrowDataType',
	#superclass : 'FFIOpaqueObject',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'printing' }
GArrowDataType >> name [

	^ self
		  ffiCall:
		  'String garrow_data_type_get_name(GArrowDataType * self)'
		  library: PharoArrowLibrary uniqueInstance
]

{ #category : 'printing' }
GArrowDataType >> toString [

	^ self
		  ffiCall:
		  'String garrow_data_type_to_string(GArrowDataType * self)'
		  library: PharoArrowLibrary uniqueInstance
]
