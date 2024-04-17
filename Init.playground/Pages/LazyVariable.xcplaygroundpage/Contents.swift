import Foundation
import PlaygroundSupport

class Student {
    lazy var hobby: [String] = ["hobby a", "hobby b"]
    lazy var marks: [String: Int] = {
        ["maths": 0, "science": 2]
    }()
}

PlaygroundPage.current.finishExecution()
