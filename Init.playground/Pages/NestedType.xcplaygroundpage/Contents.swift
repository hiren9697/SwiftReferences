import Foundation
import PlaygroundSupport

class Person {
    let id: String
    let name: String
    let company: Company
    
    class Company {
        let name: String
        
        init(name: String) {
            self.name = name
        }
        
        /*
        func doSomething() {
            // Can't access property id from super
            print("Name of company is: \(name), id of person: \(id)")
        }
         */
    }
    
    init(id: String, name: String, company: Company) {
        self.id = id
        self.name = name
        self.company = company
    }
}

func doSomething() {
    
    let a = 10
    
    // Access properties from parent function in nested class
    func doSomethingNested() {
        print(a)
    }
}

PlaygroundPage.current.finishExecution()