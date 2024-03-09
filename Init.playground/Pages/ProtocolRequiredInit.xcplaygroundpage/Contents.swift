import Foundation
import PlaygroundSupport

// When protocol has init, it forces it's adopting class to implement this init
// On top of than adopting class either has to declare it self as final or mark this init as required
protocol Human {
    var age: Int { get set }
    init(age: Int)
}

// Either init is required or class is final
class Citizen: Human {
    var age: Int = 10
    
    required init(age: Int) {
        self.age = age
    }
}

class SceniourCitizen: Citizen {
    var pansion: Double
    
    init(pansion: Double, age: Int) {
        self.pansion = pansion
        super.init(age: age)
    }
    
    required init(age: Int) {
        fatalError("init(age:) has not been implemented")
    }
}

PlaygroundPage.current.finishExecution()

