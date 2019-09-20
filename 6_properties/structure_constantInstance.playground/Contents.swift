import UIKit

// var value types hoạt động?
var x = 10, y = 15
//ô nhớ của z ko được thay đổi
let z = 20
// thay đổi ô nhớ của x
x = y
x += 10
print(x)
print(y)
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
//                      //đối tượng
// bản sao đối tượng
// ko cho phép thay đổi ô nhớ (rangeOfFourItems) => chuyển hết các properties => let
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 2                 // Error
print(rangeOfFourItems.firstValue)


//class Foo {
//    var bar = 23
//    var baz = 59
//}
//
//// ...
//
//let referenceToFoo = Foo()
//referenceToFoo.bar = 203

// thay đổi thuộc tính đối tượng "a"
// ô nhớ để tham chiếu tới đối tượng "a" ko đổi
