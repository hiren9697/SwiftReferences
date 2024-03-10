import Foundation
import PlaygroundSupport

class Human<T> {
    let id: T
    
    init(id: T) {
        self.id = id
    }
}

let h1 = Human(id: "0")

PlaygroundPage.current.finishExecution()

