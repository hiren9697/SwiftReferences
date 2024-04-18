import Foundation
import PlaygroundSupport

// MARK: - Backslash
// --------------------------------------------------------
// Backslash used before special characters as escaping character
print("\n\n---------------------------- Backslash")
print("Hello there \n, and this is really great, \t now what? \\ \\")

// MARK: - Raw string
print("\n\n---------------------------- Raw string")
// --------------------------------------------------------
// # is used to write raw string
print(#"This is raw string with \Hello \there"#)
print(##"This is raw string with \Hello \there"##)
// This can not compile
// print("This is normal string with \Hello \there")

// MARK: - Multi-line string
// --------------------------------------------------------
print("\n\n---------------------------- Multi line string")
let s1 = """
This
is
multi-line
string
"""

let s2 = #"""
\This
\is
\multi-line
\raw
\string
"""#

// MARK: - Unicode
// --------------------------------------------------------
print("\n\n---------------------------- Unicode")
func printInfo(s: String) {
    print("Count: \(s.count), UTF-16 count: \(s.utf16.count) for string: \(s)")
    
    print("NSString length: \((s as NSString).length) for string: \(s), which is similar to UTF-16 count")
    
    print("--- UTF-8 ---")
    for c in s.utf8 {
        print(c)
    }
    print("--- UTF-16 ---")
    for c in s.utf16 {
        print(c)
    }
    print("--- Unitcode scalar, UTF-32 ---")
    for c in s.unicodeScalars {
        print(c)
    }
    print("--- Plain characters ---")
    for c in s {
        print(c)
    }
}

var s = "ABC \u{1F601}"
printInfo(s: s)

let secondEmoji: UInt32 = 128514 // 1F602
let unicodeScalar: Unicode.Scalar = Unicode.Scalar(secondEmoji)!
s.unicodeScalars.append(unicodeScalar)
printInfo(s: s)

// MARK: - Character
// --------------------------------------------------------
// let c1 = Character("Hello") // This will crash at runtime
let c1 = Character("H")

// MARK: - Sub-string
// --------------------------------------------------------
print("\n\n---------------------------- Sub-string")
let startIndex = s.startIndex
let secondIndex = s.index(startIndex, offsetBy: 1)
let secondCharacter = s[secondIndex]
print("Second character: \(secondCharacter)")

var s3 = "Hello"
let secondIndexOfS3 = s3.index(s3.startIndex, offsetBy: 1)
s3.insert(contentsOf: "ey, h", at: secondIndexOfS3)
print("s3 after insert: \(s3)")

PlaygroundPage.current.finishExecution()
