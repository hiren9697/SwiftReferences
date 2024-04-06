import Foundation
import PlaygroundSupport

// MARK: - precondition
// --------------------------------------------------------
extension Array {
    mutating func removeRandom(_ number: Int) {
        precondition(count >= number, "Can't remove \(number) items from an array with count \(count)")

        for _ in 0..<number {
            remove(at: Int.random(in: 0..<count))
        }
    }
}

// MARK: - preconditionFailure
// --------------------------------------------------------
func updateStatus(to newStatus: String) -> String {
    if newStatus == "active" || newStatus == "inactive" {
        return "Updating status…"
    }

    preconditionFailure("Unknown status: \(newStatus)")
}



PlaygroundPage.current.finishExecution()
