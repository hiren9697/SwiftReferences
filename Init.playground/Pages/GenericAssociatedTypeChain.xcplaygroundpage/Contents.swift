import Foundation
import PlaygroundSupport

protocol Fighter {
    associatedtype Enemy: Fighter
    associatedtype Weapon: Armament
    
    func steal(weapon: Self.Enemy.Weapon, from: Self.Enemy)
}

struct Soldier: Fighter {
    typealias Enemy = Archer
    typealias Weapon = Gun
    
    func steal(weapon: Sword, from: Archer) {}
}

struct Archer: Fighter {
    typealias Enemy = Soldier
    typealias Weapon = Sword
    
    func steal(weapon: Gun, from: Soldier) {}
}

protocol Armament {}
struct Sword: Armament {}
struct Gun: Armament {}

struct Camp<T: Fighter> {
    var enemy: T.Enemy?
}

let s1 = Soldier()
let a1 = Archer()

var c1 = Camp<Soldier>(enemy: a1)
var c2 = Camp<Archer>(enemy: s1)

PlaygroundPage.current.finishExecution()

