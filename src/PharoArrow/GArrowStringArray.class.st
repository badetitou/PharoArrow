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
		  'String garrow_string_array_get_string(GArrowStringArray * self, int index)'
		  library: PharoArrowLibrary uniqueInstance
]
