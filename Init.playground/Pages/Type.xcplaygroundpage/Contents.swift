import PlaygroundSupport
import Foundation

class Dog {
    let id: String
    
    required init(id: String) {
        self.id = id
    }
}
class NoisyDog: Dog {}

func dogTypeExpecter(_ type: Dog.Type)-> Dog {
    // Type comparision
    let equality = type == Dog.self
    let typology = type is Dog.Type
    // Do something with type
    print(type)
    return type.init(id: "-")
}

dogTypeExpecter(Dog.self)
dogTypeExpecter(type(of: Dog))

PlaygroundPage.current.finishExecution()
