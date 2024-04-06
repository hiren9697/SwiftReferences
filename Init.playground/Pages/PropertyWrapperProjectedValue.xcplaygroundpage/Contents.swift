import Foundation
import PlaygroundSupport

@propertyWrapper struct TextWrapper {
    let wrappedValue: String
    let projectedValue: String
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.lowercased()
        self.projectedValue = wrappedValue.uppercased()
    }
    
    init(projectedValue: String) {
        self.wrappedValue = projectedValue.lowercased()
        self.projectedValue = projectedValue.uppercased()
    }
}

func acceptTextWrapper(@TextWrapper text: String) {
    print("Original text: \(text)")
    print("Projected value: \($text)")
}

acceptTextWrapper($text: "Hello")

PlaygroundPage.current.finishExecution()
