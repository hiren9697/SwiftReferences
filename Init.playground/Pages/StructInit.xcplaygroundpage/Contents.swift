import Foundation
import PlaygroundSupport
import UIKit

// MARK: - init delegateion
// ----------------------------------------------------------------
/// init can delegate to another init
/// But you can't use self inside delegating init before calling init it is delegate to
struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    
    init() {}
    
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    init(center: Point, size: Size) {
        // self.origin // This won't compile
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size) // Here we are calling another init
        print(self.origin) // This works
    }
}

PlaygroundPage.current.finishExecution()
