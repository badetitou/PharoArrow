Class {
	#name : 'GArrowInt8Array',
	#superclass : 'GArrowArray',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowInt8Array >> at: index [

	^ self
		  ffiCall:
		  'int8 garrow_int8_array_get_value(GArrowFloatArray * self, int index)'
		  library: PharoArrowLibrary uniqueInstance
]
