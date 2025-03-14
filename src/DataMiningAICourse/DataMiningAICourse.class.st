Class {
	#name : #DataMiningAICourse,
	#superclass : #Object,
	#instVars : [
		'baseFolder'
	],
	#category : #DataMiningAICourse
}

{ #category : #'instance creation' }
DataMiningAICourse class >> createFromDefaultFolder [
	| folder |
	folder := 'c:/Users/Jefferson/Google Drive/My Drive/_docs/aulas/aulas-dadas/fgv/mestrado/mineracao-dados-e-ia/_turmas/2025-mex-regular'
			asFileReference.

	^ self new baseFolder: folder
]

{ #category : #accessing }
DataMiningAICourse >> baseFolder: aFileReference [
	baseFolder := aFileReference
]
