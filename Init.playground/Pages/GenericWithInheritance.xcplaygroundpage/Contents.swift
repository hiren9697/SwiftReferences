import Foundation
import PlaygroundSupport

class Human<T> {
    let id: T
    
    init(id: T) {
        self.id = id
    }
}

let h1 = Human<String>(id: "0")
let h2 = Human(id: 1)

class Student<T>: Human<T> {
    
}

let s1 = Student<Double>(id: 1.1)
let s2 = Student(id: "1")

class Citizen: Human<String> {
    
}

let c1 = Citizen(id: "2")


PlaygroundPage.current.finishExecution()

