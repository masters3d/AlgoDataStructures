# AlgoDataStructures
Notes and Implementation of different Algorithms and Datastructes


### Links
[ Swift 4 uses Introsort](https://forums.swift.org/t/revisiting-the-choice-of-sort-algorithm/8958)  
https://en.wikipedia.org/wiki/Introsort  


### Existential:  
I've been sort of confused about what an existential is. In Swift, this comes up a lot when talking about Generics. My understanding is that these pretty much things that describe types but they are not necessarily types themselves? So an interface/protocol is an existential in swift. 

* https://medium.com/@vhart/protocols-generics-and-existential-containers-wait-what-e2e698262ab1
* https://github.com/apple/swift/blob/master/docs/GenericsManifesto.md#existentials
* https://github.com/apple/swift-evolution/blob/master/proposals/0095-any-as-existential.md
* https://github.com/apple/swift/blob/master/docs/GenericsManifesto.md#generalized-existentials
* https://medium.com/@dogwith1eye/exploring-existential-types-with-swift-c86142d7bd1c

Other definitions seem to relate the idea of Existential to some form of generics. It would seem that in order for a protocol/interface/trait to be an existential it needs also have generics involved. 

* https://softwareengineering.stackexchange.com/questions/127959/how-do-existential-types-differ-from-interfaces
* https://github.com/rust-lang/rfcs/blob/master/text/2071-impl-trait-type-alias.md
* http://blog.benjamin-encz.de/post/bridging-existentials-generics-swift-2/

While a single protocol/interface/trail can be considered an existential, it is not until you combine multiple existential that you can see the power of this feature. Another key point of an existential seems that it is supposed to hide the actual concrete type.  This comes up a lot with type erasure containers. 


