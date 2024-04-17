import Foundation
import PlaygroundSupport

// Function's external parameter names are part of function
// Below are two different function
// This is not method overloading
func getA(paramterA: String) {}
func getB(paramterB: String) {}

// Function with same name but different signature is method overloading
func sum(a: Int, b: Int) {}
func sum(a: Float, b: Float) {}
func sum(a: Int, b: Int)-> Int { 0 }
func sum(a: Float, b: Float)-> Float { 0 }

PlaygroundPage.current.finishExecution()
