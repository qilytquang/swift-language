//: Playground - noun: a place where people can play
//: Exercise from plan - linklist creation

import UIKit

class Node<T> {
    var value: T
    var next : Node<T>?
    
    init(_ value: T) {
        self.value = value
    }
    
    func printValue() {
        print("\(value)")
    }
}

class LinkList<T> {
    var first: Node<T>?
    
    func isEmpty() -> Bool {
        return first == nil
    }
    
    func getSize() -> Int {
        var size = 0
        var node = first
        while node != nil {
            node = node?.next
            size += 1
        }
        return size
    }
    
    func getLast() -> Node<T>? {
        var last = first
        while last?.next != nil {
            last = last?.next
        }
        return last
    }
    
    func get(at index: Int) -> Node<T>? {
        if index < 0 || index + 1 > self.getSize() {
            print("out of the range")
            return nil
        } else {
            var node = self.first
            for _ in 1...index {
                node = node?.next
            }
            return node
        }
    }
    
    func getBeforLast() -> Node<T>? {
        var beforLast = first
        while beforLast?.next?.next != nil {
            beforLast = beforLast?.next
        }
        return beforLast
    }
    
    func addFirst(_ node: Node<T>) {
        node.next = first
        first = node
    }
    
    func addLast(_ node: Node<T>) {
        if self.isEmpty() {
            self.addFirst(node)
        } else {
            self.getLast()?.next = node
        }
    }
    
    func add(_ node: Node<T>, at index: Int) {
        if index < 0 || index > self.getSize() {
            print("out of the range")
        } else {
            if index == 0 {
                self.addFirst(node)
            } else if index == self.getSize() {
                self.addLast(node)
            } else { /* if catch this else, that means the size of link list is more than 1 */
                var beforNode = first
                for _ in 1..<index {
                    beforNode = beforNode!.next
                }
                let oldNode = beforNode!.next
                beforNode!.next = node
                node.next = oldNode
            }
        }
    }
    
    func deleteFirst() -> Node<T>? {
        if let node = self.first {
            self.first = self.first?.next
            node.next = nil
            return node
        } else {
            return self.first
        }
    }
    
    func deleteLast() -> Node<T>? {
        let last = self.getLast()
        if first?.next != nil {
            let beforLast = self.getBeforLast()
            beforLast?.next = nil
        } else {
            first = nil
        }
        return last
    }
    
    func delete(at index: Int) -> Node<T>? {
        if index < 0 || index + 1 > self.getSize() {
            print("out of the range")
            return nil
        } else { /* if catch this else that means the size of link list is more than 0 (not empty) */
            if index == 0 {
                return self.deleteFirst()
            } else if index + 1 == self.getSize() {
                return self.deleteLast()
            } else { /* if catch this else, that means the size of link list is more than 2 */
                var beforNode = first
                for _ in 1..<index {
                    beforNode = beforNode!.next
                }
                let node = beforNode!.next
                beforNode!.next = node!.next
                return node
            }
        }
    }
    
    func printList() {
        if !self.isEmpty() {
            var interator: Node<T>? = first
            repeat {
                interator?.printValue()
                interator = interator?.next
            } while interator != nil
        } else {
            print("list empty")
        }
        print("----------------------")
    }
}

let num1 = Node<Int>(3)
let num2 = Node<Int>(4)
let num3 = Node<Int>(5)

var list = LinkList<Int>()
list.printList()

list.addFirst(num1)
list.printList()

list.addFirst(num2)
list.printList()

list.addLast(num3)
list.printList()

var first = list.deleteFirst()
list.printList()

var last = list.deleteLast()
list.printList()

list.addLast(Node<Int>(10))
list.addLast(Node<Int>(20))
list.addLast(Node<Int>(30))
list.addLast(Node<Int>(40))
list.addLast(Node<Int>(50))
list.addLast(Node<Int>(60))
list.printList()

list.get(at: 4)?.printValue()
print("----------------------")
list.add(Node<Int>(80), at: 4)
list.printList()
list.delete(at: 3)
list.printList()