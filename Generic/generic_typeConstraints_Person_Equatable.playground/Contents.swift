import UIKit
//tìm có thể ra được thì ok trả về chỉ số, nhưng ko có trong dãy thì ko có cach nào ngoài trả về NULL => Int? làm kiểu trả về
func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}
class Person: Equatable {
    let height: Double
    let weight: Double
    let name: String
    func Work() {
        print("Go to work")
    }
    init(name: String, height: Double, weight: Double) {
        self.name = name
        self.height = height
        self.weight = weight
    }
    static func ==(lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name && lhs.height == rhs.height && lhs.weight == rhs.weight
    }
}
let hung = Person(name: "Hung", height: 170, weight: 60)
let huong = Person(name: "Huong", height: 158, weight: 51)
let hien = Person(name: "Hien", height: 167, weight: 72)
let array = [hung, huong, hien]
print(findIndex(of: huong, in: array)!)
//Equatable for values that can be equal, or not equal
//Comparable for values that can be compared, like a > b
//Hashable for values that can be “hashed”, which is a unique integer representation of that value (often used for dictionary keys)
//CustomStringConvertible for values that can be represented as a string, a helpful protocol for quickly turning custom objects into printable strings
//Numeric and SignedNumeric for values that are numbers, like 42 and 3.1415
//Strideable for values that can offset and measured, like sequences, steps and ranges
