import Foundation
import PlaygroundSupport

let (name, age) = ("Hiren", 27)

print(name)
print(age)

let t1 = ("Name", 10)
print(t1.0)
print(t1.1)

let s1: String
(s1, _) = t1
print(s1)

var n1 = 1
var n2 = 2
(n1, n2) = (n2, n1)
print(n1, n2)

let t2 = (name: "Hiren", age: 27)
print(t2.name, t2.age)
print(t2.0, t2.1)



PlaygroundPage.current.finishExecution()
