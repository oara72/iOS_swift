//: Playground - noun: a place where people can play

//Student Name: Oliver Rodriguez
//Student ID: W0668948
//Assignment 5: Chapter 12


import Cocoa

//var str = "Hello, playground"

//Listing 12.1 Defining a function

func printGreeting() {
    print("Hello, playground.")
}
printGreeting()

//FUNCTION PARAMETERS

//Listing 12.2 Using a parameter

func printGreeting1() {
    print("Hello, playground.")
}
printGreeting1()

func printPersonalGreeting(name: String) {
    print("Hello \(name), welcome to your playground.")
}
printPersonalGreeting(name: "Matt")

//Listing 12.3 A function for division

func printPersonalGreeting1(name: String) {
    print("Hello \(name), welcome to your playground.")
}
printPersonalGreeting1(name: "Matt")

func divisionDescriptionFor(numerator: Double, denominator: Double) {
    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)") }
        divisionDescriptionFor(numerator: 9.0, denominator: 3.0)

//PARAMETERS NAMES

//Listing 12.4 Using explicit parameter names

func printPersonalGreeting(to name: String) {
    print("Hello \(name), welcome to your playground.")
}
printPersonalGreeting(to: "Matt")

////VARIADIC PARAMETERS
//
////Listing 12.5 Greeting a group

func printPersonalGreetings1(to names: String...) {
    for name in names {
        print("Hello \(name), welcome to the playground.")
    }
}
printPersonalGreetings1(to: "Alex","Chris","Drew","Pat")


//DEFAULT PARAMETER VALUES

//Listing 12.6 Adding a default parameter value

func divisionDescriptionFor(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".")
{
    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
}

divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!")

//IN-OUT PARAMETERS

//Listing 12.7 An in-out parameter

var error = "The request failed:"
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
if code == 400 {
    errorString += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
error

//Returning from a Function

//Listing 12.8 Returning a string

//func divisionDescriptionForB(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".")
//{
//    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
//}
//
//divisionDescriptionForB(numerator: 9.0, denominator: 3.0)
//divisionDescriptionForB(numerator: 9.0, denominator: 3.0, withPunctuation: "!")
//
//func divisionDescriptionForB(numerator: Double,
//                            denominator: Double,
//                            withPunctuation punctuation: String = ".") -> String {
//            return "\(numerator) divided by \(denominator) equals\(numerator / denominator)\(punctuation)"
//}
//print(divisionDescriptionForB(numerator: 9.0, denominator: 3.0, withPunctuation: "!"))


//Nested Functions and Scope

func areaOfTriangleWith(base: Double, height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}
areaOfTriangleWith(base: 3.0, height: 5.0)

//Multiple Returns

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()

    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}


//Listing 12.11 Calling sortedEvenOddNumbers(_:)

func sortedEvenOddNumbers1(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
var evens = [Int]()
var odds = [Int]()
for number in numbers {
    if number % 2 == 0 {
        evens.append(number)
    } else {
        odds.append(number)
    }
}
return (evens, odds)
}

//let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111]
//let theSortedNumbers = sortedEvenOddNumbers1(aBunchOfNumbers)
//print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")


//Optional Return Types
//Listing 12.12 Using an optional return

func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
    return name.1
}
let middleName = grabMiddleName(fromFullName: ("Matt",nil,"Mathias"))
if let theName = middleName {
    print(theName)
}


//Exiting Early from a Function

func greetByMiddleName(fromFullName name: (first: String,
    middle: String?,
    last: String)) {
    guard let middleName = name.middle else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleName(fromFullName: ("Matt","Danger","Mathias"))

//Bronze Challenge

func greetByMiddleNameRefactor(fromFullName name: (first: String,
    middle: String?,
    last: String)) {
    
    guard let middleName = name.middle, middleName.characters.count < 4 else {
        print("Hello there")
        return
    }
    print("Hello, \(middleName)")
}
greetByMiddleNameRefactor(fromFullName: ("Matt","Danger","Mathias"))


// SILVER CHALLENGE

func siftBeans(fromGroceryList groceries: [String]) -> (beans: [String], otherGroceries: [String]) {
    var beans = [String]()
    var otherGroceries = [String]()
    for item in groceries {
        if item.lowercased().contains("bean") {
            beans.append(item)
        } else {
            otherGroceries.append(item)
        }
    }
    return (beans, otherGroceries)
}

let result = siftBeans(fromGroceryList: ["green beans", "milk", "black beans", "pinto beans", "apples"])

result.beans == ["green beans", "black beans", "pinto beans"]
result.otherGroceries == ["milk", "apples"]

//Code Challenge

func findMinimum() {
    
}
findMinimum



