Class {
	#name : 'GArrowInt32Array',
	#superclass : 'GArrowArray',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowInt32Array >> at: index [

	^ self
		  ffiCall:
		  'int64 garrow_int32_array_get_value(GArrowInt32Array * self, int index)'
		  library: PharoArrowLibrary uniqueInstance
]
