import UIKit

protocol CounterDataWay {
    func setAmountIncrement(_ count: Int) -> Int
}
//task đếm số trong bộ đếm khi khởi tạo về 0 nhảy từng bước
//có thể đếm số trong bộ đếm khi khởi tạo về 0 với nhảy 3 bước
class Counter {
    var count: Int
    var dataSource: CounterDataWay?
    func increment() {
        for _ in 1...4 {
            if let amount = dataSource?.setAmountIncrement(count) {
                count += amount
                print(count)
            }
        }
    }
    init(count: Int) {
        self.count = count
    }
}
class TowardZero: CounterDataWay {
    func setAmountIncrement(_ count: Int) -> Int {
        if count == 0 {
            return 0
        } else if count < 0 {
            return 1
        } else {
            return -1
        }
    }
}
var counter = Counter(count: 4)
counter.dataSource = TowardZero()
counter.increment()



