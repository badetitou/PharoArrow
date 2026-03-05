Class {
	#name : 'GArrowFloatArray',
	#superclass : 'GArrowArray',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowFloatArray >> at: index [

	^ self
		  ffiCall:
		  'int64 garrow_float_array_get_value(GArrowFloatArray * self, int index)'
		  library: PharoArrowLibrary uniqueInstance
]
