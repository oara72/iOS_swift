//: Playground - noun: a place where people can play

import Cocoa

//: Playground - noun: a place where people can play

//var str = "Hello, playground"

//working with string

////////7.1
//create a constant
let playground = "Hello, playground"


////////7.2
//this is a varible that can chage it value
var mutablePlayground = "Hello, mutable playground"


/////////7.3
//Use the addition and assignment operator to add some final punctuation
mutablePlayground += "!"

////////7.4
//this for can loop through the string
for c: Character in mutablePlayground.characters {
    print("'\(c)'")
}

////////7.5
//unicode scalars
//we create a costant with a unicode
let oneCoolDude = "\u{1F60E}"

////////7.6
//this one combine two unicode and for one caracter
let aAcute = "\u{0061}\u{0301}"

////////7.7
//Revealing the Unicode scalars behind a string
// Each number on the console corresponds to a Unicode scalar representing a single character in the string
for scalar in playground.unicodeScalars {
    print("\(scalar.value) ")
}

////////7.8
//Unicode also provides already combined forms for some common characters
let aAcutePrecomposed = "\u{00E1}"


/////////7.9
//Checking equivalence
let b = (aAcute == aAcutePrecomposed) // true

////////7.10
print("aAcute: \(aAcute.characters.count); aAcutePrecomposed: \(aAcutePrecomposed.characters.count)")

//Finding the fifth character
//we used the startIndex property on the string to get the first index of the string.
let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]



