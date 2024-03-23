import Foundation
import PlaygroundSupport

class Dog {
    var language: String
    
    init(language: String) {
        self.language = language
    }
    
    func bark() {
        print(language)
    }
}

let d1 = Dog(language: "Hey")
// d1.bark()
let functionReference = d1.bark
functionReference()
d1.language = "Edited"
functionReference()

// Note:
// You can try struct instead of class


PlaygroundPage.current.finishExecution()
