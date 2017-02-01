//: Playground - noun: a place where people can play

//Student Name: Oliver Alexander
//Student ID: W0668948
//Assignment 1: Chapter 3

import Cocoa

 var str = "Hello, playground"
 var population: Int = 500001

 var message: String
 var hasPostOffice: Bool = true

//Listing 3.1 Big or Small

/*

if population < 1000 {
    message = "\(population) is a small town!"
} else {
    message = "\(population) is pretty big!"
}
print(message)
*/

//Listing 3.2 Is ther a post office

/*



if population < 1000 {
    message = "\(population) is a small town!"
} else {
    message = "\(population) is pretty big!"
}
print(message)

if !hasPostOffice {
    print("where do we buy stamps?")
}
 */

//Listen 3.3 using the ternary operator

/*

message = population < 1000 ? "\(population) is a small town!" : "\(population) is pretty big!"
print(message)

if !hasPostOffice {
    print("where do we buy stamps?")
}
*/

//Listen 3.4 Restoring if/else

/*

message = population < 1000 ? "\(population) is a small town!" : "\(population) is pretty big!"
print(message)

if !hasPostOffice {
    print("where do we buy stamps?")
}
 */

//Listening 3.5 Nesting Conditionals
/*


if population < 10000 {
    message = "\(population) is a medium town!"
} else {
    message = "\(population) is pretty big !"
}
print(message)

if !hasPostOffice {
    print("where do we buy stamps?")
}
 */

//Listening 3.6 Using Else and If
/*
if population < 10000 {
    message = "\(population) is a small town!"
} else if population >= 1000 && population < 5000 {
    message = "\(population) is a medium town !"
} else {
    message = "\(population) is pretty big"
}
print(message)

if !hasPostOffice {
    print("where do we buy stamps?")
}
 */

//BRONZE CHALLENGE

if population > 500000 {
    message = "\(population) is VERY LARGE!"
} else if population >= 10000 && population <= 500000 {
    message = "\(population) is a medium town !"
} else {
    message = "\(population) is pretty small"
}
print(message)

if !hasPostOffice {
    print("where do we buy stamps?")
}
