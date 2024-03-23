import Foundation
import PlaygroundSupport

class Dog: Equatable {
    let id: UUID = UUID()
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    static func ==(lhs: Dog, rhs: Dog)-> Bool {
        return lhs.id == rhs.id
    }
}

let array1: [Dog] = [
    Dog(name: "D1"),
    Dog(name: "D2"),
    Dog(name: "D3")
]

let array2 = array1

print(array1 == array2)
// print(array1 === array2) //Compile error
print(array1[0] === array2[0])

PlaygroundPage.current.finishExecution()
