//: Playground - noun: a place where people can play

//Student Name: Oliver Rodriguez
//Student ID: W0668948
//Assignment 1: Chapter 2

//This chapter introduce to data types, constants and variables


import Cocoa


//BRONZE CHALLENGE
var townUnemployement: Int;

//Listing 2.1. Assigning a string to  a variable

/*
var str = "Hello, playground"
var numberOfStoplights = "Four"
*/


//Listing 2.2. Adding "Four" and 2
//Assign an instance of the string type to the variable called numberOfStoplights.
//add the integer 2 to this variable


/*
var numberOfStoplights = "Four"
numberOfStopLights += 2
*/


// Listing 2.3 Using a numerical type
// Change data type to use Integer

/*
var numberOfStoplights: Int = 4
numberOfStopLights += 2
*/

//Listing 2.4 Declaring a Constant
// Now declare the variable numberOfStopLights such as constants using let.

/*
let numberOfStoplights: Int = 4
numberOfStoplights += 2
*/

// When I declare numberOfStopLights to be a constant via the let keyword, this change causes the compiler to issue an error.
// Fix the problem by removing the addition and assignment code.


// Listing 2.6 Declarating population
// Now add an Int to represent the Town's population.

/*
let numberOfStoplights: Int = 4
var population: Int
population = 5422
*/

//Giving the town a name and Crafting the twon description

let numberOfStoplights: Int = 4
var population: Int
population = 5422
townUnemployement = 200;
let townName: String = "Knowhere"
let townDescription = "\(townName) has a population of \(population), a unemployment of \(townUnemployement) human being and \(numberOfStoplights) stoplights."
print(townDescription)
 
 














