
// Node in a linked list
class Node<T>{
    var value:T?
    var next:Node<T>?
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


func printNode<T>(_ that: Node<T>?){
    var that = that
    while let this = that, let value = this.value{
        print(value)
        that = this.next
    }
}


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
