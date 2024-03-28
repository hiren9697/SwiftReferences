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


PlaygroundPage.current.finishExecution()
