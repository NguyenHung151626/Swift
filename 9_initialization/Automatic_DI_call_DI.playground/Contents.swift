import UIKit

//automatic initializers
//DI gọi DI
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
//    init(currentSpeed: Double) {
//        self.currentSpeed = currentSpeed
//    }
}
var vehicle = Vehicle()
vehicle.currentSpeed = 15
print("Vehicle: \(vehicle.description)")
class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
//    init(gear: Int, currentSpeed: Double) {
//        self.gear = gear
//        super.init(currentSpeed: currentSpeed)
//    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
    override var description: String {
        return "traveling at \(currentSpeed) miles per hour" + " in gear \(gear)"
    }
    
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")
// AutomaticCar: traveling at 35.0 miles per hour in gear 4


