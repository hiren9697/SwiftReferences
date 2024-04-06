import Foundation
import PlaygroundSupport

// MARK: - Defer with return value
// --------------------------------------------------------
struct A {
    var intValue: Int = 0
    
    mutating func increment()-> Int {
        defer {
            intValue += 10
        }
        
        return intValue
    }
}

var a = A()
let value = a.increment()
print(value, a.intValue)


// MARK: - Multiple defer
// -------------------------------------------------------
func doSomething() {
    defer {
        print("First defer in \(#function)")
    }
    defer {
        print("Second defer in \(#function)")
    }
    defer {
        print("Third defer in \(#function)")
    }
    
    print("Executable statement inside \(#function)")
}

doSomething()

PlaygroundPage.current.finishExecution()
