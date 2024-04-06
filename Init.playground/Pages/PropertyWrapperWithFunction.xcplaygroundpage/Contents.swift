import Foundation
import PlaygroundSupport

@propertyWrapper struct NonEmptyString {
    var wrappedValue: String {
        didSet {
            print("--- called didSet of wrappedValue inside NonEmptyString ---")
            if wrappedValue.isEmpty {
                fatalError("NonEmptyString should not empty")
            }
        }
    }
    
    init(wrappedValue: String) {
        print("--- called init of NonEmptyString ---")
        if wrappedValue.isEmpty {
            fatalError("NonEmptyString should not empty")
        }
        self.wrappedValue = wrappedValue
    }
}

struct User {
    @NonEmptyString var name = "Hiren"
    
    mutating func changeName(newName: String) {
        self.name = newName
    }
    
    mutating func passNonEmptyString(@NonEmptyString string: String) {
        print(_string)
    }
}

var u1 = User()
u1.changeName(newName: "Hiren Fadadu")
u1.passNonEmptyString(string: "Non empty")


PlaygroundPage.current.finishExecution()
