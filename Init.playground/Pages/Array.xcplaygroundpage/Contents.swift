import Foundation
import PlaygroundSupport

// ---------------- Operations with subscripts --------------
var array: [Int] = [1, 2, 3]
// array[9] = 9 // This will crash, Index out of range

array[1 ..< 2] = [7, 8, 9]
print(array)
array[1 ..< 1] = [10]
print(array)

array[1...] = [90, 91]
print(array)

// ---------------- Optional Array --------------
let array1: [Optional<Int>] = [1, 2]
print(array1.first) // Optional(Optional(1))

// ---------------- Prefix & Suffix ------------------
let firstElementSlice = array.prefix(1)
print(firstElementSlice)
let firstTwoElementSlice = array.prefix(2)
print(firstTwoElementSlice)
let lastElementSlice = array.suffix(1)
print(lastElementSlice)
let lastTwoElementSlice = array.suffix(2)
print(lastTwoElementSlice)
// If we give higher value in prefix or suffix, It won't crash
let prefixSlice = array.prefix(10)
print(prefixSlice)
let suffixSlice = array.suffix(10)
print(suffixSlice)

// ---------------- Comparision ------------------
let i1 = 1
let i2 = 2
let i3 = 3
let firstComparisionArray: [Int] = [1, 2, 3]
firstComparisionArray == [i1, i2, i3]

class Dog: Equatable {
    let id: String = UUID().uuidString
    static func == (lhs: Dog, rhs: Dog) -> Bool {
        lhs.id == rhs.id
    }
}
class NoisyDog: Dog {}

let nd1 = NoisyDog()
let d1 = nd1 as Dog
let nd2 = NoisyDog()
let d2 = nd2 as Dog
let secondComparisionArray = [d1, d2]
let thirdComparisionArray = [nd1, nd2]
secondComparisionArray == thirdComparisionArray

PlaygroundPage.current.finishExecution()
