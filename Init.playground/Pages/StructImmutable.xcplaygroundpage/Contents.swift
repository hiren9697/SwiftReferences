import Foundation

// MARK: - Immutable
// ----------------------------------------------------------------
/*
struct Dog {
    let a: Int = 10
    
    init(a: Int) {
        self.a = a // This won't compile
    }
}
 */

struct Cat {
    var a: Int = 20
    
    init(a: Int) {
        self.a = a
    }
    
    init() {
        self.init(a: 10)
        self.a = 30 // This won't work if a is let
    }
}

let c = Cat(a: 20)
let c2 = Cat()

// ----------------------------------------------------------------
struct Human {
    let name: String
    var properties: [String]
    
    subscript (index: Int)-> String {
        mutating get {
            /// In order to run this if statement we have to mark this getter as mutating
            /// And only variable instances of this type can use this subscript
            if index == 0 {
                properties.append("New one")
            }
            return properties[index]
        }
        set {
            properties[index] = newValue
        }
    }
}

let h1 = Human(name: "Hiren", properties: ["p1"])
// print(h1[0]) // Compile error because h1 is declared as let
var h2 = Human(name: "Ravi", properties: ["p1", "p2"])
print(h2[0]) // Works fine with var instances

