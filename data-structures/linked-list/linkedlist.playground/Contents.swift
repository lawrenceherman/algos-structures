//: Playground - noun: a place where people can play

import UIKit

// O(n)


//his means that when you're dealing with a linked list, you should insert new items at the front whenever possible. That is an O(1) operation. Likewise for inserting at the back if you're keeping track of the tail pointer.



// with only head pointer and next. append O(n) prepend O(1)

class LinkedList {
  
  var head: Node?
  
  func append(value: Int) {
    let newNode = Node(value: value)
    
    if let head = head {
      var currentNode = head
      while currentNode.next != nil {
        currentNode = currentNode.next!
      }
      currentNode.next = newNode
    } else {
      head = newNode
    }
  }
  
  func prepend(value: Int) {
    let newNode = Node(value: value)
    
    if head != nil {
      newNode.next = head
      head = newNode
    } else {
      head = newNode
    }
  }
  
  func printList() {
    if let head = head {
      var currentNode = head
      
      while currentNode.next != nil {
        print(currentNode.value)
        currentNode = currentNode.next!
      }
      print(currentNode.value)
    }
  }
}

class Node {
  
  var value: Int
  var next: Node?
  
  init(value: Int) {
    self.value = value
  }
}

var ll = LinkedList()

ll.append(value: 5)
ll.append(value: 6)
ll.append(value: 7)

ll.prepend(value: 4)
ll.prepend(value: 3)

ll.printList()


//
/////// from outside
//public class Node {
//
//  var value: String
//  var next: Node?
//  weak var previous: Node?
//
//
//  init(value: String) {
//    self.value = value
//    }
//}
//
//public class LinkedList {
//
//  var head: Node?
//  var tail: Node?
//
//  var isEmpty: Bool {
//    return head == nil
//  }
//
//
//  public func append(value: String) {
//
//    let newNode = Node(value: value)
//
//    if let tailNode = tail {
//      newNode.previous = tailNode
//      tailNode.next = newNode
//    } else {
//      head = newNode
//    }
//
//    tail = newNode
//  }
//}
//
//extension LinkedList: CustomStringConvertible {
//
//  public var description: String {
//
//    var text = "["
//    var node = head
//    while node != nil {
//      text += "\(node!.value)"
//      node = node?.next
//      if node != nil { text += ", "}
//    }
//    return text + "]"
//  }
//}
//
//
//let dogBreeds = LinkedList()
//dogBreeds.append(value: "labrador")
//dogBreeds.append(value: "bulldog")
//dogBreeds.append(value: "Beagle")
//dogBreeds.append(value: "Husky")
//
//print(dogBreeds)



