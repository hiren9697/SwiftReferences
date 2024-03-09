import Foundation
import PlaygroundSupport

protocol Human {
    var age: Int { get set }
    mutating func increaseAge()
}

struct Student: Human {
    var age: Int = 0
    
    mutating func increaseAge() {
        age += 1
    }
}

class Citizen: Human {
    var age: Int = 10
    
    func increaseAge() {
        age += 1
    }
}

/*
// `s1` can't be let, as we are changing it's property in increaseAge()
// This won't compile
let s1 = Student()
s1.increaseAge()
 */

// This works fine
var s1 = Student()
s1.increaseAge()

var c1 = Citizen()
c1.increaseAge()

PlaygroundPage.current.finishExecution()
