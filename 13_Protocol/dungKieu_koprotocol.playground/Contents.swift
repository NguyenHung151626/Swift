import UIKit

protocol BakeryDelegate {
    func deliverCookie(_ cookies: Cookie)
}
struct Cookie {
    var size = "small"
    var type = "sweet"
}
class Bakery {
    var delegate: CookieShop        //optional vì là kiểu protocol nên ta ko thể có giá trị để khởi tạo
    func makeCookie() {
        var cookies = Cookie()
        cookies.size = "big"
        cookies.type = "salt"
        delegate.deliverCookie(cookies)
    }
    init(delegate: CookieShop) {
        self.delegate = delegate
    }
}
class CookieShop: BakeryDelegate {
    func deliverCookie(_ cookies: Cookie) {
        print("A lot of cookies size: \(cookies.size), with type: \(cookies.type)" +
            " was successfully delivered to the cookie shop")
    }
}
var cookieShop = CookieShop()
var bakery = Bakery(delegate: cookieShop)
bakery.makeCookie()

