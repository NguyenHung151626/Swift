
import UIKit

//test fallthrough
let somePoint = (2, 0)
switch somePoint {
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}
