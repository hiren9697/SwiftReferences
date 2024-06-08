import Foundation
import PlaygroundSupport

class Dog {
    func printInfo(name: String) {
        print("Name of dog is: \(name)")
    }
}

class JS: Dog {
    // This is method overloading, not overriding
    func printInfo(id: String) {
        print("Id of dog is: \(id)")
    }
    
    // This is also not overriding
    func printInfo(name: Int) {
        print("Name of dog is: \(name)")
    }
    
    // This is overriding, with exact signature
    override func printInfo(name: String) {
        print("Printing iformation in overriding method: \(name)")
    }
}

PlaygroundPage.current.finishExecution()
