Class {
	#name : 'GArrowBooleanArray',
	#superclass : 'GArrowArray',
	#category : 'PharoArrow-Arrow',
	#package : 'PharoArrow',
	#tag : 'Arrow'
}

{ #category : 'accessing' }
GArrowBooleanArray >> at: index [

	^ self
		  ffiCall:
		  'Boolean garrow_boolean_array_get_value(GArrowBooleanArray * self, int index)'
		  library: PharoArrowLibrary uniqueInstance
]
