import UIKit

//lấy giá trị thể tích hình hộp chữ nhật
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}
var fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
fourByFiveByTwo.width = 20.0
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
