import UIKit

//lựa chọn 1 trong 2 hàm để sử dụng sau này cho việc đếm về 0
//để lựa chọn chính xác xây dựng 1 hàm có kiểu trả về (Int) -> Int
//func stepForward(_ input: Int) -> Int {
//    return input + 1
//}
//func stepBackward(_ input: Int) -> Int {
//    return input - 1
//}
//func chooseStepFunction(value: Int ) -> (Int) -> Int {
//    return value > 0 ? stepBackward : stepForward
//}
//nested function
func chooseStepFunction(value: Int ) -> (Int) -> Int {
    func stepForward(_ input: Int) -> Int {
        return input + 1
    }
    func stepBackward(_ input: Int) -> Int {
        return input - 1
    }
    return value > 0 ? stepBackward : stepForward
}
var currentValue = 3
var moveToZero = chooseStepFunction(value: currentValue)
// day la 1 loi goi ham nen nhat dinh phai thuc thi va tra ve nen kieu phai la stepforward hoac stepbackward
while currentValue != 0 {
    print(currentValue)
    currentValue = moveToZero(currentValue)
}


