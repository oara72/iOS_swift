//IOS Development
// Oliver A. Rodriguez
// W0668948

//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

//Listing 14.1 Defining an enumeration

enum TextAlignment {
    case left
    case right
    case center
}

//Listing 14.2 Creating an instance of TextAlignment

//var alignment: TextAlignment = TextAlignment.left

//Listing 14.3 Taking advantage of type inference

//var alignment2 = TextAlignment.left

//Listing 14.4 Inferring the enum type

//alignment = .right

//Listing 14.5 Type inference when comparing values

//if alignment == .right {
//    print("We should right-align the text!")
//}

//Listing 14.6 Switching to switch

//switch alignment {
//case .left:
//    print("left aligned")
//case .right:
//    print("right aligned")
//case .center:
//    print("center aligned")
//}

//Listing 14.7 Making center the default case

//switch alignment2 {
//case .left:
//    print("left aligned")
//case .right:
//    print("right aligned")
////case .center:
//default:
//    print("center aligned")
//}

//Listing 14.8 Adding a case

//enum TextAlignment2 {
//    case left
//    case right
//    case center
//    case justify
//}
//var alignment_b = TextAlignment2.justify

//Listing 14.9 Returning to explicit cases

//switch alignment {
//case .left:
//    print("left aligned")
//case .right:
//    print("right aligned")
////default:
//case .center:
//    print("center aligned")
//}

//Listing 14.10 Including all cases

//switch alignment {
//case .left:
//    print("left aligned")
//case .right:
//    print("right aligned")
//case .center:
//    print("center aligned")
//case .justify:
//    print("justified")
//}


// RAW VALUE ENUMERATION

//Listing 14.11 Using raw values

enum TextAlignment3: Int {
    case left
    case right
    case center
    case justify
}

//Listing 14.12 Confirming the raw values

var alignment = TextAlignment3.justify

print("Left has raw value \(TextAlignment3.left.rawValue)")
print("Right has raw value \(TextAlignment3.right.rawValue)")
print("Center has raw value \(TextAlignment3.center.rawValue)")
print("Justify has raw value \(TextAlignment3.justify.rawValue)")
print("The alignment variable has raw value \(alignment.rawValue)")

//Listing 14.13 Specifying raw values

enum TextAlignment4: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

//Listing 14.14 Converting raw values to enum types

// Create a raw value
let myRawValue = 20
// Try to convert the raw value into a TextAlignment
if let myAlignment = TextAlignment4(rawValue: myRawValue) {
    // Conversion succeeded!
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    // Conversion failed
    print("\(myRawValue) has no corresponding TextAlignment case")
}

//Listing 14.15 Trying a bad value

//let myRawValue = 100

//Listing 14.16 Creating an enum with strings

enum ProgrammingLanguage: String {
    case swift = "swift"
    case objectiveC = "objective-c"
    case c = "c"
    case cpp = "c++"
    case java = "java"
}
let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

//Listing 14.17 Using default string raw values

enum ProgrammingLanguage2: String {
    case swift
    case objectiveC = "objective-c"
    case c
    case cpp = "c++"
    case java
}

let myFavoriteLanguage2 = ProgrammingLanguage2.swift
print("My favorite programming language is \(myFavoriteLanguage2.rawValue)")

// METHODS

//Listing 14.18 Lightbulbs can be on or off

//enum Lightbulb {
//    case on
//    case off
//}

//Listing 14.19 Establishing temperature behaviors

//enum Lightbulb {
//    case on
//    case off
//
//    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
//        switch self {
//        case .on:
//            return ambient + 150.0
//
//        case .off:
//            return ambient
//        }
//    }
//}

//Listing 14.20 Turning on the light
//var bulb = Lightbulb.on
//let ambientTemperature = 77.0
//var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature:
//    ambientTemperature)
//print("the bulb's temperature is \(bulbTemperature)")

//Listing 14.21 Trying to toggle

//enum Lightbulb {
//    case on
//    case off
//    
//    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
//        switch self {
//        case .on:
//            return ambient + 150.0
//            
//        case .off:
//            return ambient
//        }
//    }
//    func toggle() {
//        switch self {
//        case .on:
//            self = .off
//            
//        case .off:
//            self = .on
//        }
//    }
//}


//Listing 14.23 Turning off the light

enum Lightbulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
            
        case .off:
            return ambient
        }
    }
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }

}

//Listing 14.23 Turning off the light

//var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature:
//    ambientTemperature)
//print("the bulb's temperature is \(bulbTemperature)")
//bulb.toggle()
//bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
//print("the bulb's temperature is \(bulbTemperature)")

//ASSOCIATED VALUES

//Listing 14.24 Setting up ShapeDimensions

//enum ShapeDimensions {
//    // square's associated value is the length of one side
//    case square(side: Double)
//    // rectangle's associated value defines its width and height
//    case rectangle(width: Double, height: Double)
//}

//Listing 14.25 Creating shapes

//var squareShape = ShapeDimensions.square(side: 10.0)
//var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)


//Listing 14.26 Using associated values to compute area

//enum ShapeDimensions {
//    // square's associated value is the length of one side
//    case square(side: Double)
//    // rectangle's associated value defines its width and height
//    case rectangle(width: Double, height: Double)

//
//func area() -> Double {
//    switch self {
//    case let .square(side: side):
//        return side * side
//    case let .rectangle(width: w, height: h):
//        return w * h
//        }
//    }
//}


//Listing 14.27 Computing areas

//var squareShape = ShapeDimensions.square(side: 10.0)
//var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
//
//print("square's area = \(squareShape.area())")
//print("rectangle's area = \(rectShape.area())")

//Listing 14.28 Setting up a point

//enum ShapeDimensions {
//    // point has no associated value - it is dimensionless
//    case point
//    // square's associated value is the length of one side
//    case square(side: Double)
//    // rectangle's associated value defines its width and height
//    case rectangle(width: Double, height: Double)
//    
//    func area() -> Double {
//        switch self {
//        case .point:
//            return 0
//        case let .square(side: side):
//            return side * side
//        case let .rectangle(width: w, height: h):
//            return w * h
//        }
//    }
//}

//Listing 14.29 What is the area of a point?

//var squareShape = ShapeDimensions.square(side: 10.0)
//var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
//var pointShape = ShapeDimensions.point
//print("square's area = \(squareShape.area())")
//print("rectangle's area = \(rectShape.area())")
//print("point's area = \(pointShape.area())")


// RECURSIVE ENUMERATIONS
//
//enum FamilyTree {
//    case noKnownParents
//    case oneKnownParent(name: String, ancestors: FamilyTree)
//    case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
//        motherName: String, motherAncestors: FamilyTree)
//    }

//Listing 14.31 Correct FamilyTree

//indirect enum FamilyTree {
//    case noKnownParents
//    case oneKnownParent(name: String, ancestors: FamilyTree)
//    case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
//        motherName: String, motherAncestors: FamilyTree)
//}

//Listing 14.32 FamilyTree indirect cases

enum FamilyTree {
    case noKnownParents
    indirect case oneKnownParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
        motherName: String, motherAncestors: FamilyTree)
}

//Listing 14.33 Creating a FamilyTree

let fredAncestors = FamilyTree.twoKnownParents(
    fatherName: "Fred Sr.",
    fatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents),
    motherName: "Marsha",
    motherAncestors: .noKnownParents)

// BRONZE CHALLENGE
//Add a perimeter() method to the ShapeDimensions enum. This method should
//compute the perimeter of a shape (the sum of the length of all its edges). Make sure you
//handle all the cases!

enum ShapeDimensions {
    case point
    case square(side: Double)
    case rectangle(width: Double, height: Double)
        case cube(sideA: Double)

    func perimeter() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side:side):
            return 4 * side
        case let .rectangle(width:w, height:h):
            return 2 * w + 2 * h
        case let .cube(sideA:length):
            return 6 * length
        }
    }
}


// SILVER CHALLENGE
//Add another case to the ShapeDimensions enum for a right triangle.
//You can ignore the orientation of the triangle. Just keep track of the lengths of its three sides.
//Adding a new case will cause your playground to give you an error in the area() method. Fix the error

enum ShapeDimensions2 {
    case point
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    case rightTriangle(sideA: Double, sideB: Double)
    
func perimeter2() -> Double {
    switch self {
        
        case .point:
            return 0
        case let .square(side:side):
            return 4 * side
        case let .rectangle(width:w, height:h):
            return 2 * w + 2 * h
        case let .rightTriangle(sideA:a, sideB:b):
            return a + b + sqrt(a * a + b * b)
        }
    }
}

var rightTriangle = ShapeDimensions2.rightTriangle(sideA: 1, sideB: 1)
