import Foundation
import PlaygroundSupport

// MARK: - Implicit unwrapped optional
// --------------------------------------------------------
let a: Int! = nil
print(a)

let b: Int = a

PlaygroundPage.current.finishExecution()
