import Foundation
import PlaygroundSupport

// Required designation means that every subclass of Dog must inherit or reimplement specific int

// MARK: - Example 1
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


// MARK: - Example 2
class Person {
    let name: String
    
    required init(name: String) {
        self.name = name
    }
   
    // If we don't make above init required, we get below error
    // Constructing an object of class type 'Self' with a metatype value must use a 'required' initializer
    // Because compiler is in doubt, whether the init(id:) is implemented by every possible subtype of Person. to reassure the compiler, we must declare that initializer with ther required keyword
    class func makePerson()-> Self {
        let p = Self(name: "Dummy")
        return p
    }
}

class BadPerson: Person {
    
}

let bp = BadPerson.makePerson()

PlaygroundPage.current.finishExecution()
