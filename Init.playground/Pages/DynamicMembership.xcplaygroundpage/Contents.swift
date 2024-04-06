import Foundation
import PlaygroundSupport

// MARK: - DynamicMemberLookup & DynamicCallable
// --------------------------------------------------------
@dynamicMemberLookup
@dynamicCallable
struct Employee {
    var dictionary: [String: Any] = [:]
    
    // This is for dynamicMemberLookup
    subscript(dynamicMember member: String)-> String? {
        get { return dictionary[member] as? String }
        set { dictionary[member] = newValue }
    }
    
    // This is for dynamicCallable
    func dynamicallyCall(withArguments arg: [String]) {
        print(arg)
    }
    
    func dynamicallyCall(withKeywordArguments kvp: KeyValuePairs<String, Int>) {
        print(kvp)
    }
}

var e1 = Employee()
e1.name = "Hiren"
print(e1.name ?? "")

e1("a","b")

e1(salary: 10, tds: 50)

// MARK: - DynamicMemeberLookup with KeyPath
// --------------------------------------------------------
struct Human {
    let name: String = "a"
    let age: Int = 0
}

@dynamicMemberLookup
struct Dog {
    var name: String = "D1"
    var age: Int = 10
    let human: Human = Human()
    
    subscript(dynamicMember member: KeyPath<Human, Any>)-> Any? {
        return human[keyPath: member]
    }
    
    // This is not working
    /*
     subscript(dynamicMember member: KeyPath<Dog, Any>)-> Any? {
     return [keyPath: member]
     }
     */
}

PlaygroundPage.current.finishExecution()
