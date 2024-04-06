import Foundation
import PlaygroundSupport

struct Adder {
    let base: Int
    
    func callAsFunction(_ value: Int)-> Int {
        return base + value
    }
}

let adderOf3 = Adder(base: 3)
let newValue = adderOf3(5)

PlaygroundPage.current.finishExecution()
