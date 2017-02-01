//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

//Listing 4.1 Maximun and minimun values for Int

print("The maximum Int value is \(Int.max).")
print("The minimum Int value is \(Int.min).")

//Listing 4.1 maximun and minimum values for Int32

print ("The maximun value for a 32-bit integer is \(Int32.max).")
print ("The minimun value for a 32-bit integer is \(Int32.min).")

//Listening 4.3 Maximun and minimun values for unsigned integers

print("The maximum UInt value is \(UInt.max).")
print("The minimum UInt value is \(UInt.min).")
print ("The maximun value for a 32-bit unsigned integer is \(UInt32.max).")
print ("The minimun value for a 32-bit unsigned integer is \(UInt32.min).")

//CREATING INTEGER INSTANCES
//Listing 4.4 Declaring Int Explicity and Implicity

let numberOfPages: Int = 10 //Declares the type explicitly
let numberOfChapters = 3    //Also of type Int, but inferred by the compiler

//Listing 4.5 Declaring other integer types explicity

let numberOfPeople: UInt = 40;
let volumeAdjustment: Int32 = -1000;

//Listing 4.6 Declaring Integer types with invalid values

//Trouble ahead
//let firstBadValue: UInt = -1
//let secondBadValue: Int8 = 200

//OPERATIONS AND INTEGER
//Listing 4.8 Performing basic operations

print(10+20)
print(30-5)
print(5*6)

//Listing 4.9 Order of Operations

print(10+2*5) //20, because 2*5 is evaluated first
print(30-5-5) // 20, because 30-5 is evaluated first

//Listing 4.10 Parentheses are your friends

print((10+2) * 5) // 60, because(10+2) is now evaluated first
print (30 - (5-5)) // 30, because (5-5) is now evaluated first

//INTEGER DIVISION
//Listing 4.11 Integer division can give unexpected results

print (11/3) //Prints 3

//Listing 4.12 Remainders

print (11/3) // Prints 3
print (11 % 3) // Prints 2
print (-11 % 3) // prints -2


//OPERATOR SHORTHAND
//Listing 4.13 Combing addition or subtraction and assignment

var x = 10
x += 10  // Is equivalente to: x = x +10
x -= 5 //Is equivalent to: x = x -5
print("x has had 5 subtracted from it and is now \(x)")

//OVERFLOW OPERATORS
//Listing 4.14 Solve for Z

//let y: Int8 = 120
//let z = y + 10 //error Executivon was interrupted

//Listing 4.15 using an overflow operator
//let z = y &+10
//print("120 &+ 10 is \(z)")


//CONVERTING BETWEEN INTEGER TYPES

//Listing 4.16 adding values or different types

let a: Int16 = 200
let b: Int8 = 50
//let c = a+b //Uh-oh

//Listing 4.17 Converting type to allow addition
let c = a + Int16(b)

//FLOATING-POINT NUMBERS

//Listing 4.18 Declaring floating-point number types

let d1 = 1.1 //Implicity double
let d2: Double = 1.1
let f1: Float = 100.3

//Listing 4.19 Operations on floating-point numbers

print (10.0 + 11.4)
print (11.0 / 3.0)

//Listing 4.20 Comparing two floating-point numbers

if d1 == d2 {
    print ("d1 and d2 are the same!")
}

//Listing 4.21 Unexpect results

print("d1+0.1 is \(d1 + 0.1)")
if d1 + 0.1 == 1.2 {
    print("d1 + 0.1 is equal to 1.2")
}


//Bronze Challenge












