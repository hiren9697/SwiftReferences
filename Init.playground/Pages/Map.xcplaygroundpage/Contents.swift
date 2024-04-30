import Foundation
import PlaygroundSupport

var id: String? = "0"
var stringId = id.map { Int($0) }
var stringId1 = id.flatMap { Int($0) }

print("StringId: \(stringId), StringId1: \(stringId1)")

PlaygroundPage.current.finishExecution()
