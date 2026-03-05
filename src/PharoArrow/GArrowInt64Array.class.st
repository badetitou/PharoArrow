Class {
	#name : 'GArrowInt64Array',
	#superclass : 'GArrowArray',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowInt64Array >> at: index [

	^ self
		  ffiCall:
		  'int64 garrow_int64_array_get_value(GArrowFloatArray * self, int index)'
		  library: PharoArrowLibrary uniqueInstance
]
