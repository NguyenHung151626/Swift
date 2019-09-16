import UIKit
// ví dụ: hàm sorted(by:) lấy closure làm tham số
// viết đầy đủ
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
let intergers = [1, 23, -111, 33333]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
print(reversedNames)

//closure expressions
var reversedNamesExpressions = names.sorted(by: {(s1: String, s2: String) -> Bool in
    return s1 > s2})
print(reversedNamesExpressions)
// do phương thức sort(by:) sử dụng với closure kiểu (String, String) -> Bool
// => kiểu tham số và kiểu trả về
// => reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
//shorthand: sử dụng $0, $1 cho phần tử thứ nhất và thứ 2
// => reversedNames1 = names.sorted(by: { $0 > $1 } )

//Trailing Closure
var trailingClosure = intergers.sorted() { s1, s2 in return s1 < s2}
print(trailingClosure)
