import Foundation
import PlaygroundSupport

outer: for i in 0...10 {
inner: for j in 0...10 {
    if i > 2 && j > 2 {
        break outer
    }
        print("i: \(i), j: \(j)")
    }
}

PlaygroundPage.current.finishExecution()
