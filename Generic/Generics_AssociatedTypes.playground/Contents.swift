import UIKit

protocol Container {
    associatedtype Item: Equatable
    mutating func append(_ item: Item)
    var count: Int { get }
}
struct IntStack: Container {
    // original IntStack implementation
    var items = [Int]()
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
    // conformance to the Container protocol
    typealias Item = Int
    mutating func append(_ item: Int) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
}
//them constraints cho Associated types in protocol //vi du PriorityQueue
struct Stack<Element: Equatable>: Container {
    // original Stack<Element> implementation
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
    // conformance to the Container protocol
//    typealias Item = Element
    mutating func append(_ item: Element) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
}
class Element: Equatable {
    let height: Int
    func work() {
        print("I am working")
    }
    init(height: Int) {
        self.height = height
    }
    static func == (element1: Element, element2: Element) -> Bool {
        return element1.height == element2.height
    }
}
struct IntQueue: Container {
    var items = [Int]()
    mutating func enqueue(_ item: Int) {
        items.append(item)
    }
    mutating func dequeue() -> Int {
        return items.removeFirst()
    }
    func display() {
        for index in 0..<count{
            print("\(items[index]) ", terminator: "")
        }
    }
    // conformance to the Container protocol
//    typealias Item = Int
    mutating func append(_ item: Int) {
        self.enqueue(item)
    }
    var count: Int {
        return items.count
    }
}
var intQueue = IntQueue()
intQueue.enqueue(1)
intQueue.enqueue(2)
intQueue.enqueue(3)
intQueue.enqueue(4)
intQueue.display()
print("")
print("dequeued number is: ")
print(intQueue.dequeue())
print("After dequeue:")
intQueue.display()
var dog = Element(height: 100)
var cat = Element(height: 80)
var stackElement = Stack<Element>()
stackElement.push(dog)
stackElement.push(cat)
print("")
print("chieu cao thu tren dinh stack")
print(stackElement.pop().height)

