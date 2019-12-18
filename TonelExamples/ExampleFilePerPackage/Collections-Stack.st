TonelFile { #tonelVersion : '1.0',
            #tonelFormat : 'filePerPackage',
            #contentType : 'package',
            #name : 'Collections-Stack.st'
}

Package { #name : 'Collections-Stack' }
"
This is a ""package comment.""
"

Class {
	#name : 'ManifestCollectionsStack',
	#superclass : 'PackageManifest',
	#category : 'Collections-Stack'
}
"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"

{ #category : 'meta-data' }
ManifestCollectionsStack class >> dependencies [
	^ #(#'Collections-Sequenceable')
]

{ #category : 'meta-data' }
ManifestCollectionsStack class >> description [
	^ 'I only contain a Stack implementation.'
]

{ #category : 'meta-data' }
ManifestCollectionsStack class >> packageName [
	^ #'Collections-Stack'
]



Class {
	#name : 'Stack',
	#superclass : 'LinkedList',
	#category : 'Collections-Stack'
}
"
I implement a simple Stack. #push: adds a new object of any kind on top of the stack. #pop returns the first element and remove it from the stack. #top answer the first element of the stack without removing it.
"

{ #category : 'removing' }
Stack >> pop [
	"Returns the first element and remove it from the stack."

	^self  removeFirst 
]

{ #category : 'adding' }
Stack >> push: anObject [ 
	"Adds a new object of any kind on top of the stack."
	self addFirst: anObject.
	^ anObject.
]

{ #category : 'accessing',
  #id : 'Stack >> top',
  #source : 'top
	\"Answer the first element of the stack without removing it.\"
	^ self first'
}
[]
