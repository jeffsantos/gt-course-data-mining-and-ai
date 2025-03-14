Class {
	#name : #BaselineOfGtCourseDataMiningAndAI,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtCourseDataMiningAndAI
}

{ #category : #loading }
BaselineOfGtCourseDataMiningAndAI class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'gt-course-data-mining-and-ai' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfGtCourseDataMiningAndAI >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'GtCourseDataMiningAndAI'
		]
]
