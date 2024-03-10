import Foundation
import PlaygroundSupport

func findMinimum<T: Comparable>(_ collection: Array<T>)-> T? {
    guard !collection.isEmpty else {
        return nil
    }
    var minimum = collection.first!
    for element in collection {
        if element < minimum {
            minimum = element
        }
    }
    return minimum
}

let array = [0, 1, 2, 3, 4, 5, 6]
let minimum = findMinimum(array)

PlaygroundPage.current.finishExecution()

