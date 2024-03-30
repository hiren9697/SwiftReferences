import Foundation
import PlaygroundSupport

var i = 0

enum MyError {
    case message(String)
    case number(Int)
    case fatal
}

var errors: [MyError] = [.message("Authenticatin error"),
                         .message("HTTPS error"),
                         .message("Internal error"),
                         .message("Server error"),
                         .number(0),
                         .number(1),
                         .fatal
]

// MARK: - Iterator
// --------------------------------------------------------
var iterator1 = (1...5).makeIterator()
print("Iterator with sequence")
while let element = iterator1.next() {
    print("Element: \(element)")
}

var iterator2 = errors.makeIterator()
print("Iterator with array")
while let error = iterator2.next() {
    print("Error Element: \(error)")
}

// MARK: - Enumerated
// --------------------------------------------------------
print("Enumerated 1")
for element in errors.enumerated() {
    print("Enumerated element: \(element)")
}

print("Enumerated 2")
for (offset, element) in errors.enumerated() {
    print("Offset: \(offset), element: \(element)")
}

// MARK: - Alternate for do while
// --------------------------------------------------------
print("Repeat while")
repeat {
    print("i: \(i)")
    i += 1
} while i < 10

// MARK: - While let
// --------------------------------------------------------
var tempErrors = errors
print("While let")
while let error = tempErrors.popLast() {
    print("Erorr is: \(error)")
}

// MARK: - While case let
// --------------------------------------------------------
tempErrors = errors
i = 0
print("While case let")
while case let .message(n) = tempErrors[i] {
    print("Erorr message is: \(n)")
    i += 1
}

// MARK: - For case let
// --------------------------------------------------------
tempErrors = errors
i = 0
print("For case let")
for case let .message(n) in tempErrors {
    print("Error message is: \(n)")
}

for i in (1...10) where i % 2 == 0 {
    print("i: \(i) is even")
}

/*
for case let button as UIButton in view.subviews {
    print("Button: \(button)")
}
 */

// MARK: - Stride
// --------------------------------------------------------
print("Stride")
for i in stride(from: 10, through: 0, by: -2) {
    print(i)
}

// MARK: - Sequence
// --------------------------------------------------------
print("Sequence 1")
let sequence1 = sequence(first: 1,
                         next: { $0 < 10 ? $0 + 1 : nil })
for element in sequence1 {
    print("Sequence element: \(element)")
}

print("Sequence 2")
let sequence2 = sequence(first: 1,
                         next: { $0 + 1 })
for element in sequence1.prefix(5) {
    print("Sequence element: \(element)")
}

print("Even numbers with sequence")
let evenSequence = sequence(state: 0,
                            next: { (element: inout Int) -> Int in
    let newElement = element + 2
    element = newElement
    return newElement
})

for element in evenSequence.prefix(10) {
    print("Even element: \(element)")
}

print("Fibonaci with sequence")
let fibonaci = sequence(state: (0, 1),
                        next: { (pair: inout (Int, Int)) -> Int in
    let n = pair.0 + pair.1
    pair = (pair.1, n)
    return n
})

for element in fibonaci.prefix(10) {
    print("Fibonaci element: \(element)")
}

PlaygroundPage.current.finishExecution()
