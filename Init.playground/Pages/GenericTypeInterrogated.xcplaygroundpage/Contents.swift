import Foundation
import PlaygroundSupport

func takeAndReturnSameThing<T>(_ t: T)-> T {
    if T.self is String.Type {
        print("T is String")
    } else {
        print("T is other type")
    }
    return t
}

takeAndReturnSameThing("Hiren")

PlaygroundPage.current.finishExecution()

