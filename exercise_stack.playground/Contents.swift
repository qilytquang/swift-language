//: Playground - noun: a place where people can play
//: Exercise from the plan - stack creation

import UIKit

class MyStack<T> {
    var listNodes = [T]()
    let size = 4
    
    func isEmpty() -> Bool {
        return listNodes.count == 0
    }
    
    func isFull() -> Bool {
        return listNodes.count >= size
    }
    
    func push(_ node: T) {
        if self.isFull() {
            print("stack is full")
        } else {
            listNodes.insert(node, at: 0)
        }
    }
    
    func pop() -> T? {
        if self.isEmpty() {
            print("stack is empty")
            return nil
        }
        return listNodes.remove(at: 0)
    }
    
    //get top of stack
    func peek() -> T? {
        if self.isEmpty() {
            print("stack is empty")
            return nil
        }
        return listNodes[0]
    }
}

var stackInt = MyStack<Int>()
print("Stack at begin: \(stackInt.listNodes)")
stackInt.push(30)
print("Stack after push: \(stackInt.listNodes)")
stackInt.push(40)
print("Stack after push: \(stackInt.listNodes)")
stackInt.push(50)
print("Stack after push: \(stackInt.listNodes)")
stackInt.push(60)
print("Stack after push: \(stackInt.listNodes)")

print("Check Head of stack: \(stackInt.peek())")
stackInt.push(70)
print("Stack after push: \(stackInt.listNodes)")

print("Stack at current: \(stackInt.listNodes)")
let node1 = stackInt.pop()
print("Stack after pop: \(stackInt.listNodes)")
let node2 = stackInt.pop()
print("Stack after pop: \(stackInt.listNodes)")
let node3 = stackInt.pop()
print("Stack after pop: \(stackInt.listNodes)")
let node4 = stackInt.pop()
print("Stack after pop: \(stackInt.listNodes)")
let node5 = stackInt.pop()
print("Stack after pop: \(stackInt.listNodes)")