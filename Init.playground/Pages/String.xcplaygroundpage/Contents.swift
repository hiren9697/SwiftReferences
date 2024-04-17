import Foundation
import PlaygroundSupport

// Backslash used before special characters as escaping character
print("Hello there \n, and this is really great, \t now what? \\ \\")

// # is used to write raw string
print(#"This is raw string with \Hello \there"#)
print(##"This is raw string with \Hello \there"##)
// This can not compile
// print("This is normal string with \Hello \there")

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

/*
 var s = "\u{1F601}"
 print(s, s.count)
 for c in s {
     print(c)
 }
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
 let secondEmoji: UInt32 = 128514 // 1F602
 let unicodeScalar = UnicodeScalar = UnicodeScalar(secondEmoji)
 s.unicodeScalars.append(unicodeScalar)
 */

PlaygroundPage.current.finishExecution()
