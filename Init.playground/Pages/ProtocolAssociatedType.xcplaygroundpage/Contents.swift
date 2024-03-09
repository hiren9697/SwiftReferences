import Foundation
import PlaygroundSupport

protocol Human {
    associatedtype T
    
    var age: T { get set }
    func setAge(age: T)
}

class Student: Human {
    var age: Int
    
    init(age: Int) {
        self.age = age
    }
    
    func setAge(age: Int) {
        self.age = age
    }
}

/*
// This is also valid
class Student: Human {
    typealias T = Int
    var age: T

    init(age: T) {
        self.age = age
    }

    func setAge(age: T) {
        self.age = age
    }
}
 */

PlaygroundPage.current.finishExecution()

