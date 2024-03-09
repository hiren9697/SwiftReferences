import Foundation
import PlaygroundSupport

class Animal {
    let id: String
    
    required init(id: String) {
        self.id = id
    }
}

class Dog: Animal {
    let name: String
    
    init(name: String) {
        self.name = name
        super.init(id: "-")
    }
    
    required init(id: String) {
        self.name = "abc"
        super.init(id: id)
        
    }
}

class Cat: Animal {
    
}

let d = Dog(name: "A")
let c = Cat(id: "1")

PlaygroundPage.current.finishExecution()
