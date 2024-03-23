import Foundation
import PlaygroundSupport

// ------------------- Capture List --------------------
class Dog {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

struct Cat {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


var intValue = 1
let d1 = Dog(name: "D1")
var c1 = Cat(name: "C1")


let function = {[intValue, d1, c1] in
    print("--- With capture list")
    print("int: \(intValue), dog: \(d1.name), cat: \(c1.name)")
    print("---\n\n")
}
let function1 = {
    print("--- Without capture list")
    print("int: \(intValue), dog: \(d1.name), cat: \(c1.name)")
    print("---\n\n")
}


function()
function1()
intValue = 2
d1.name = "D2"
c1.name = "C2"
function()
function1()

PlaygroundPage.current.finishExecution()
