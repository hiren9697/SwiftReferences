import Foundation

let i = 0
let j: Int? = nil
let dict: [String: Any] = [
    "intValue": 10,
    "floatValue": 20.90
]

class Dog {
    func stopTalking() {}
}
class NoisyDog: Dog {
    func quite() {}
}
let d1 = Dog()

enum MyError {
    case number(Int)
    case message(String)
    case fatal
}
let error1 = MyError.number(12)
let error2 = MyError.message("This is error")
let error3 = MyError.fatal

// MARK: - Mopup - '_'
// --------------------------------------------------------

switch i {
case 1:
    print("i is 1")
case _:
    print("i is something else")
}

// MARK: - Mopup with let
// --------------------------------------------------------

switch i {
case 1:
    print("i is 1")
case let n:
    print("i is \(n)")
}

// MARK: - Closed range
// --------------------------------------------------------

switch i {
case 0 ... 9:
    print("i is between 0 and 9")
case 10 ... 20:
    print("i is between 10 and 20")
default:
    print("i is out of range")
}

// MARK: - Partial range
// --------------------------------------------------------

switch i {
case ..<0:
    print("i is negative")
case 1...:
    print("i is positive")
case 0:
    print("i is 0")
default:
    break
}

// MARK: - Optional
// --------------------------------------------------------
// If j is 1, Then case with '1' will be executed
switch j {
case 1:
    print("i is 1")
case 1?:
    print("i is optional 1")
case 2?:
    print("i is optional 2")
case nil:
    print("i is nil")
default:
    print("i is something else")
}

// MARK: - Alternative of if else
// --------------------------------------------------------
switch true {
case i == 0:
    print("i is 0")
case i == 1:
    print("i is 1")
default:
    print("i is something else")
}

// MARK: - Conditional with where
// --------------------------------------------------------
switch i {
case let j where j < 0:
    print("i is negative")
case let j where j > 0:
    print("i is positive")
case let j where j == 0:
    print("i is 0")
default:
    print("i is something else")
}

// MARK: - 'is'
// --------------------------------------------------------
switch d1 {
case is NoisyDog:
    print("d1 is NoisyDog")
case _:
    print("d1 is Dog")
}

// MARK: - 'as'
// --------------------------------------------------------
switch d1 {
case let nd as NoisyDog:
    nd.quite()
case let d:
    d.stopTalking()
}

// MARK: - Multiple conditions
// --------------------------------------------------------
switch (dict["intValue"], dict["floatValue"]) {
case (let first as Int, let second as Float):
    print("first is Int, second is Float")
case (let first as Float, let second as Int):
    print("first is Float, second is Int")
case _:
    print("Unexpected values")
}

// MARK: - Associated Value
// --------------------------------------------------------
switch error1 {
case .number(let n) where n > 0, .number(let n) where n == 0:
    print("Number error is with number >= 0")
case .number(let n) where n > 0:
    print("Number error is with positive number")
case .number(let n) where n < 0:
    print("Number error is with negative number")
case .number(0):
    print("Number error is with 0")
case .message(let string):
    print("Message error: \(string)")
case .fatal:
    print("Fatal error")
case .number(_):
    print("Number error with unexpected number")
}

switch error1 {
case .number(1...):
    print("Number error is with positive number")
case .number(...0):
    print("Number error is with  negative number")
case .number(0):
    print("Number error is with 0")
case .message(let string):
    print("Message error: \(string)")
case .fatal:
    print("Fatal error")
case .number(_):
    print("Number error with unexpected number")
}

// MARK: - Optional
// --------------------------------------------------------
switch j {
case .none:
    print("j is nil")
case .some(0):
    print("j is 0")
case .some(1):
    print("j is 1")
case .some(let n):
    print("j is something else: \(n)")
}

// MARK: - Multiple case
// --------------------------------------------------------
switch i {
case 1, 2, 3:
    print("i is 1, 2, 3")
case 4, 5, 6:
    print("i is 4, 5, 6")
case let n:
    print("i is something else: \(n)")
}

// MARK: - Fallthough
// --------------------------------------------------------
switch i {
case 1, 2, 3: fallthrough
case 4, 5, 6:
    print("i is 4, 5, 6")
case let n:
    print("i is something else: \(n)")
}

if case let .number(n) = error1 {
    print("error1 is number with n: \(n)")
}
