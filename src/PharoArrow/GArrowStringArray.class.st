Class {
	#name : 'GArrowStringArray',
	#superclass : 'GArrowArray',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowStringArray >> at: index [

	^ self
		  ffiCall:
		  'int64 garrow_string_array_get_value(GArrowStringArray * self, int index)'
		  library: PharoArrowLibrary uniqueInstance
]
