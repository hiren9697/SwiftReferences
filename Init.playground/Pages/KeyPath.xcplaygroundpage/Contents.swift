import Foundation
import PlaygroundSupport

struct Person {
    var firstName: String
    var lastName: String
}

let p1 = Person(firstName: "Hirenkumar", lastName: "Fadadu")

var firstNamePath: KeyPath<Person, String> = \Person.firstName

let firstName = p1[keyPath: firstNamePath]

firstNamePath = \.lastName

let lastName = p1[keyPath: firstNamePath]

PlaygroundPage.current.finishExecution()
