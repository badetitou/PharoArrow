Class {
	#name : 'BaselineOfPharoArrow',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfPharoArrow',
	#package : 'BaselineOfPharoArrow'
}

{ #category : 'baselines' }
BaselineOfPharoArrow >> baseline: spec [

	<baseline>
	spec for: #common do: [
		self defineDependencies: spec.
		self definePackages: spec.
		self defineGroups: spec ]
]

{ #category : 'baselines' }
BaselineOfPharoArrow >> defineDependencies: spec [

	
]

{ #category : 'baselines' }
BaselineOfPharoArrow >> defineGroups: spec [

]

{ #category : 'baselines' }
BaselineOfPharoArrow >> definePackages: spec [

	spec
		package: 'PharoArrow';
		package: 'PharoArrow-Example'
		with: [ spec requires: #( 'PharoArrow' ) ]
]
