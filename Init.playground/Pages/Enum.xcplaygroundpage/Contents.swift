import Foundation
import PlaygroundSupport

// MARK: - Indirect
enum Node {
    case node(Int)
    indirect case left(Int, Node)
    indirect case right(Int, Node)
}

PlaygroundPage.current.finishExecution()
