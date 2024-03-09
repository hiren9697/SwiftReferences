import Foundation
import PlaygroundSupport

// https://stackoverflow.com/a/26692026/10951495

class Human {
    let id: String
    var name: String
    var capitalName: String {
        get {
            return name.uppercased()
        }
    }
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}

class Student: Human {
    /*
    // This won't compile, We can't override stored propery with stored property
    // Cannot override with a stored property 'name'
    override var name: String
     */
    
    // We can override stored property with computed property
    // This works fine
    override var name: String {
        get {
            super.name
        }
        set {
            super.name = newValue
        }
    }
    
    // We can override computed properties with computed properties
    override var capitalName: String {
        get {
            return name.uppercased()
        }
    }
    
    init(name: String) {
        super.init(id: "-",
                   name: name)
    }
}

PlaygroundPage.current.finishExecution()
