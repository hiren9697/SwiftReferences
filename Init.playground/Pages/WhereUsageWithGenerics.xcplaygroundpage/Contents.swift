import Foundation
import PlaygroundSupport

// 1. Used as type constraint
protocol Flier {
    associatedtype T
}
struct Bird: Flier {
    typealias T = String
}
struct Insect: Flier {
    typealias T = Bird
}
struct AirPlane: Flier {
    typealias T = String
}

func flockTogether<U>(_ f:U) where
U: Flier,
U.T: Equatable {
    
}

flockTogether(Bird())
// flockTogether(Insect()) Compile error

// 2. Use of ==
func flockTwoTogether<U1, U2>(_ f1: U1, f2: U2) where
U1: Flier,
U2: Flier,
U1.T == U2.T {
    
}


flockTwoTogether(Bird(), f2: AirPlane())
// flockTwoTogether(Bird(), f2: Insect()) Compile error

PlaygroundPage.current.finishExecution()

