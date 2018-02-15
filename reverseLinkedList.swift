
// Node in a linked list
final class Node<T>{
    var value:T?
    var next:Node<T>?
}

final class DualNode<T> {
    var value:T?
    var next:DualNode<T>?
    var before:DualNode<T>?
}

protocol SinglyLinked{
    associatedtype T
    var value:T? { get set }
    var next:Self? { get set }
}

protocol DoublyLinked: SinglyLinked {
    var before:Self? { get set }
}

extension Node: SinglyLinked {}
extension DualNode: DoublyLinked {}


func printNode<N>(_ that: N?) where N:SinglyLinked {
    var that = that
    while let this = that, let value = this.value{
        print(value)
        that = this.next
    }
}

func printNodeReverse<N>(_ that: N?) where N:DoublyLinked{
    var that = that
    while let this = that, let value = this.value{
        print(value)
        that = this.before
    }
}

func getLastElement<N>(_ last: N?) -> N? where N:DoublyLinked  {
    var last = last
    while let this = last, this.next != nil {
        last = this.next
    }
    return last
}



let root = Node<Int>()
root.value = 0

let one = Node<Int>()
one.value = 1

let two = Node<Int>()
two.value = 2

let three = Node<Int>()
three.value = 3

let four = Node<Int>()
four.value = 4


root.next = one
one.next = two
two.next = three
three.next = four


func reverse<T>(_ nodeIn:Node<T>?) -> Node<T>? {
    var node = nodeIn
    var newRoot:Node<T>?
    while node != nil {
        let current = Node<T>()
        current.next = newRoot
        current.value = node?.value

        node = node?.next
        newRoot = current
    }
    return newRoot
}

let returned = reverse(root)

printNode(root)
print("---")
printNode(returned)

//0
//1
//2
//3
//4
//---
//4
//3
//2
//1
//0

// Convert Singly Linked List to Doubly Linked List
func convert<T>(_ node: Node<T>?, _ prev: DualNode<T>? = nil) -> DualNode<T>? {
    let current:DualNode<T>? = DualNode<T>()
    current?.value = node?.value
    if (node == nil) {
        return current
    }
    current?.before = prev
    current?.next = convert(node?.next, current)
    return current
}





var double = convert(root)
var passValue = double
while let replace = passValue?.next, replace.value != nil {
        passValue = replace
}
print("---")
printNodeReverse(passValue)
//---
//4
//3
//2
//1
//0

