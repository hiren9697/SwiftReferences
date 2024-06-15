import Foundation
import PlaygroundSupport

// MARK: - Downcasting
class Dog {
  
}

class NoisyDog: Dog {
    
    func printInfo() {
        print("Hello there, this is n")
    }
}

let d1: Dog? = NoisyDog()
let d2 = d1 as? NoisyDog

// MARK: - Not dangerous
let a: String = "Hiren"
// Casting from String to NSString is not dangerous so we can do it with just 'as'
let b: NSString = a as NSString
let c: Int = 1
let d: NSNumber = c as NSNumber

// MARK: - typeOf
// *** This should return underlying type, But it is not ***
print(type(of: d1))

PlaygroundPage.current.finishExecution()
