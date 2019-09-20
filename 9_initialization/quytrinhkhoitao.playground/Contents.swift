import UIKit
//Quy trình khởi tạo, phase 2 không có ví dụ
class Food {
    var name: String
    init(name: String) {
        self.name = name    //het phase 1
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}
class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}
let oneMysteryItem = RecipeIngredient()
print(oneMysteryItem.name)

