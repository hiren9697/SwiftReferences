import Foundation
import PlaygroundSupport

class Dog {
    // Static property can be stored
    static let name: String = "Abc"
    
    // Class property must be computed property, It can't be stored
    // class let id: String = "123" // Error
    
    // Works
    class var id: String {
        return "123"
    }
    
    func printInfo() {
        print(Self.id)
    }
}

class NoisyDog: Dog {
    override class var id: String {
        return "N123"
    }
}

let d: Dog = NoisyDog()
d.printInfo()

PlaygroundPage.current.finishExecution()
