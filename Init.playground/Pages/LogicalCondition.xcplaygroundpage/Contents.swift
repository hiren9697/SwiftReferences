import Foundation
import PlaygroundSupport

func firstCondition() -> Bool {
    print("First condition")
    return true
}
func secondCondition()-> Bool {
    print("Second condition")
    return false
}

if firstCondition() && secondCondition() {}

if secondCondition() && firstCondition() {}

if firstCondition() || secondCondition() {}

PlaygroundPage.current.finishExecution()
