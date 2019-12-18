TonelFile { #tonelVersion : '1.0',
            #contentType : 'method',
            #name : 'pop.st'
}

{ #category : 'removing' }
Stack >> pop [
	"Returns the first element and remove it from the stack."

	^self  removeFirst 
]
