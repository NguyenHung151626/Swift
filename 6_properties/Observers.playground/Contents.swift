import UIKit

class AutomaticCar {
    var gear = 1
    var currentSpeed: Double = 0 {
        willSet {
            print("Truoc khi chuyen tu \(currentSpeed) -> \(newValue)")
        }
        didSet {
            print("Sau khi chuyen tu \(oldValue) -> \(currentSpeed)")
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
    var description: String {
        return "traveling at \(currentSpeed) miles per hour" + " in gear \(gear)"
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")
// AutomaticCar: traveling at 35.0 miles per hour in gear 4
