import Foundation
import PlaygroundSupport

@propertyWrapper struct Facade {
    var _i: Int
    var wrappedValue: Int {
        get {
            return _i
        }
        set {
            _i = newValue
        }
    }
    
    init(wrappedValue: Int) {
        self._i = wrappedValue
    }
}

@propertyWrapper struct Facade2 {
    var _i: Int
    var wrappedValue: Int {
        get {
            return _i
        }
        set {
            _i = newValue
        }
    }
    
    init(_ wrappedValue: Int) {
        self._i = wrappedValue
    }
}

// Note: if we name variable 'wrappedValue' in init, it got assign automatically with literal
// variable name except 'wrappedValue' must add through init like @Clampped(a: 10, b: 10) var a
@propertyWrapper struct Clampped {
    var _i: Int
    var min: Int
    var max: Int
    var wrappedValue: Int {
        get {
            return _i
        } set {
            _i = newValue
        }
    }
    
    init(wrappedValue: Int, min: Int, max: Int) {
        self._i = wrappedValue
        self.min = min
        self.max = max
    }
}

struct UserName {
    @Facade var age = 10
    @Facade2(10) var salary
    @Clampped(min: 10, max: 100) var number = 35
    
    func printWrappers() {
        print("@Facade age is: \(_age)")
        print("@Facade2 salary is: \(_salary)")
        print("@Clampped number is: \(_number)")
    }
}

PlaygroundPage.current.finishExecution()
