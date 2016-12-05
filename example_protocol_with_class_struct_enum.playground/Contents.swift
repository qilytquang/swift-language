//: Playground - noun: a place where people can play

import UIKit

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

print(aDescription)

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

print(bDescription)

enum ExampleEnum : ExampleProtocol {
    case Base, Adjusted
    
    var simpleDescription: String {
        return self.getDescription()
    }
    
    func getDescription() -> String {
        switch self {
        case .Base:
            return "A simple description of enum"
        case .Adjusted:
            return "Adjusted description of enum"
        }
    }
    
    mutating func adjust() {
        self = ExampleEnum.Adjusted
    }
    
}

var c = ExampleEnum.Base
c.adjust()
let cDescription = c.simpleDescription

print(cDescription)
