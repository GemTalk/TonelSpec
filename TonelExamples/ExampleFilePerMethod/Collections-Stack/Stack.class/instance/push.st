 TonelFile { #tonelVersion : '1.0',
            #contentType : 'method',
            #name : 'push.st'
}

{ #category : 'adding' }
Stack >> push: anObject [ 
	"Adds a new object of any kind on top of the stack."
	self addFirst: anObject.
	^ anObject.
]
