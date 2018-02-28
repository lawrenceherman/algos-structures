//: Playground - noun: a place where people can play

import UIKit

// O(n)


//his means that when you're dealing with a linked list, you should insert new items at the front whenever possible. That is an O(1) operation. Likewise for inserting at the back if you're keeping track of the tail pointer.


public class Node {
  
  var value: String
  var next: Node?
  weak var previous: Node?
  
  
  init(value: String) {
    self.value = value
    }
}

public class LinkedList {
  
  var head: Node?
  var tail: Node?
  
  var isEmpty: Bool {
    return head == nil
  }
  

  public func append(value: String) {
    
    let newNode = Node(value: value)
    
    if let tailNode = tail {
      newNode.previous = tailNode
      tailNode.next = newNode
    } else {
      head = newNode
    }
    
    tail = newNode
  }
}

extension LinkedList: CustomStringConvertible {
  
  public var description: String {
    
    var text = "["
    var node = head
    while node != nil {
      text += "\(node!.value)"
      node = node?.next
      if node != nil { text += ", "}
    }
    return text + "]"
  }
}


let dogBreeds = LinkedList()
dogBreeds.append(value: "labrador")
dogBreeds.append(value: "bulldog")
dogBreeds.append(value: "Beagle")
dogBreeds.append(value: "Husky")

print(dogBreeds)


//var first: Node? {
//  return head
//}
//
//var last: Node? {
//  return tail
//}


