import Foundation
import PlaygroundSupport

// MARK: - 1. Designated init can't delegate
// --------------------------------------------------------
/*
class Dance {
    let type: String
    
    init(type: String) {
        self.type = type
    }

    // Designamted init can not delegate to another designated init
    // Designated initializer for 'Dance' cannot delegate (with 'self.init'); did you mean this to be a convenience initializer?
    init() {
        self.init(type: "Hello")
    }
}

let d1 = Dance()
 */

// MARK: - 2. Default designated init
// --------------------------------------------------------
/*
// Class get default designated init with no parameters, If all the params are initialized with declaration
class Screen {
    let resolution: Double = 0
}

let s1 = Screen()
 */

/*
// MARK: - 3. Can't access properties before initializing them
// --------------------------------------------------------
class Boy {
    let id: String
    let name: String
    let surname: String = "abc"
    
    init(id: String, name: String) {
        /*
        // Can't access property before initializing it
        print(self.id)
         */
        self.id = id
        print(self.id) // But it is fine here
        self.name = name + self.surname.uppercased() // But we can use initialised properties
    }
}
 */

/*
// MARK: - 4. Designated and Convience init
// --------------------------------------------------------
class Human {
    let defaultProperty = ""
    let id: String
    let name: String
    var email: String
    var income: Double
    
    init(id: String,
         name: String,
         email: String,
         income: Double) {
        self.id = id
        self.name = name
        self.email = email
        self.income = income
    }
    
    /*
    convenience init() { // This won't work if we remove `convenience` keyword
        self.init(id: "",
                  name: "",
                  email: "",
                  income: 0)
    }
     */
    
    /*
    convenience init() {
        // We can't use self before calling designated init
        // print(self.id) // 'self' used before 'self.init' call or assignment to 'self'
        // self.defaultProperty // We can't use default initialized properties
        
        self.init(id: "",
                  name: "",
                  email: "",
                  income: 0)
        
        print(self.id) // It is fine here
    }
     */
    
    /*
    convenience init() {
        // We must call designated init from convience init or we can call another convenience init which calls designated init, Ultimately a chain must end with calling a designated init
        
        // 'self.init' isn't called on all paths before returning from initializer
    }
     */
}
 */

/*
// MARK: - 5. Automatically inherit init
// --------------------------------------------------------
class Machine {
    let id: String
    
    init(id: String) {
        self.id = id
    }
}

class Zip: Machine {
    // If sub-class doesn't have any init it automatically gets designated init from super-class
}

let m1 = Machine(id: "-")
 */

/*
// MARK: - 6. init inheritance
// --------------------------------------------------
class Dog {
    let name: String
    let license: Int
    
    init(name: String, license: Int) {
        self.name = name
        self.license = license
    }
    
    convenience init(license: Int) {
        self.init(name: "-", license: license)
    }
}

class NoisyDog: Dog {
    convenience init(name: String) {
        self.init(name: name, license: 0) // inherits designated init
        // self.init(license: 0) // inherits convenience init
    }
}

// If sub-class doesn't have designated init then it inherits designated from super-class
// If sub-class override all designated init of super-class then it inherits convience init from super-class
 
let n1 = NoisyDog(name: "Hiren")
let n2 = NoisyDog(license: 1)
let n3 = NoisyDog(name: "Hiren", license: 1)
*/

/*
// MARK: - 7. Subclass with designated init
// --------------------------------------------------------
class Animal {
    let id: String
    let type: String
    
    init(id: String, type: String) {
        self.id = id
        self.type = type
    }
}

class Lion: Animal {
    let name: String
    
    /*
    init(name: String) {
        self.name = name
        // If we don't call super.init then we get this error
        // 'super.init' isn't called on all paths before returning from initializer
    }
     */
    
    // We must first initialize all the properties of subclass and then only we should call init of superClass
    init(name: String, id: String, type: String) {
        // This order is wrong
        // Property 'self.name' not initialized at super.init call
        // Immutable value 'self.name' may only be initialized once
        /*
        super.init(id: id, type: type)
        self.name = name
         */
        
        // This order is correct
        self.name = name
        super.init(id: id, type: type)
    }
}
 */

/*
// MARK: - 8. Convience init of super from subclass's designamted
// --------------------------------------------------------
class Shape {
    let id: String
    
    init(id: String) {
        self.id = id
    }
    
    convenience init() {
        self.init(id: "-")
    }
}

class Circle: Shape {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
        // Calling convenience init of super-class from sub-class
        super.init()
    }
    
    convenience init() {
        self.radius = 0
        // Convenience init must call to designated init, Can't directly call it's super-class inits
        // Convenience initializer for 'Circle' must delegate (with 'self.init') rather than chaining to a superclass initializer (with 'super.init')
        super.init()
    }
}
 */

/*
// MARK: - 9. Convenience init must call designated init
// -------------------------------------------------------
class Vehicle {
    let id: String
    
    init(id: String) {
        self.id = id
    }
}

class Bike: Vehicle {
    
    // Can't call super-class's designated init directly
    // Convenience initializer for 'Bike' must delegate (with 'self.init') rather than chaining to a superclass initializer (with 'super.init')
    /*
    convenience init() {
        super.init(id: "-")
    }
     */
    
    convenience init() {
        self.init(id: "-")
    }
}

let b1 = Bike()
print(b1.id)
*/

/*
// MARK: - 10. Override init
// --------------------------------------------------
class Region {
    let id: String
    
    init(id: String) {
        self.id = id
    }
    
    convenience init() {
        self.init(id: "-")
    }
}

class Village: Region {
    // Overriding convenience init doesn't require `override` keyword
    init() {
        super.init(id: "-")
    }
    
    // Overriding designated init requires `override` keyword
    override init(id: String) {
        super.init(id: id)
    }
}
*/

/*
// MARK: - 11. Override failable init with normal init
// --------------------------------------------------
class Vacation {
    let id: String
    
    init?(id: String) {
        guard let intValue = Int(id) else {
            return nil
        }
        self.id = id
    }
}

class Trip: Vacation {
    // Overriden failibale init with normal init
    override init(id: String) {
        super.init(id: id)!
    }
}
 */
 
PlaygroundPage.current.finishExecution()
