import Foundation
import PlaygroundSupport

// MARK: - Break with loop
// --------------------------------------------------------
// 'break' will stop or abort loop
for i in 0 ... 20 {
    if i < 5 {
        print("i is: \(i)")
    } else {
        break
    }
}

print("statement after for loop")

PlaygroundPage.current.finishExecution()
