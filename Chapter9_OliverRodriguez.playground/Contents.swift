//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//Listing 9.1 Creating an array
// the var keyword means that bucketList is a variable, which means that bucketList is mutable

//var bucketList: Array<String>

//Listing 9.2 Changing the syntax
//the brackets identify bucketList as an instance of Array, and the String syntax tells bucketList what sort of values it can accept

//var bucketList: [String]

//Listing 9.3 Initializing the array
//An Array literal is a shorthand syntax that initializes an array with whatever instances you include

//var bucketList: [String] = ["Climb Mt. Everest"]

//Listing 9.4 Using type inference
//The only difference is that it now infers this based on the type of the instance used to initialize it.

var bucketList = ["Climb Mt. Everest"]

//ACCESSING AND MODIFYING ARRAYS.

//Listing 9.5 Hot air balloon adventure
//I using append(_:) to add a value to bucketList. The append(_:) method takes an argument of whatever type an array accepts and makes it a new element in the array.

//bucketList.append("Fly hot air balloon to Fiji")


//Listing 9.6 So many ambitions!

//bucketList.append("Watch the Lord of the Rings trilogy in one day")
//bucketList.append("Go on a walkabout")
//bucketList.append("Scuba dive in the Great Blue Hole")
//bucketList.append("Find a triple rainbow")

//Listing 9.7 Removing an item from the array

//bucketList.remove(at: 2)
//bucketList

//Listing 9.8 Counting items in the array

//print(bucketList.count)

//Listing 9.9 Subscripting to find your top three items

//print(bucketList[0...2])

//Listing 9.10 Subscripting to append new information

//bucketList[2] += " in Australia"
//bucketList


//Listing 9.11 Replacing an array item

//bucketList[0] = "Climb Mt. Kilimanjaro"
//bucketList

//Listing 9.12 Using a loop to append items from one array to another

//var newItems = [
//    "Fly hot air balloon to Fiji",
//    "Watch the Lord of the Rings trilogy in one day",
//    "Go on a walkabout",
//    "Scuba dive in the Great Blue Hole",
//    "Find a triple rainbow"
//]
//for item in newItems {
//    bucketList.append(item)
//}
//
//bucketList.remove(at: 2)
//print(bucketList.count)
//print(bucketList[0...2])
//bucketList[2] += " in Australia"
//bucketList[0] = "Climb Mt. Kilimanjaro"
//bucketList

//Listing 9.13 Refactoring with the addition and assignment operator
//The += operator makes for an easy way to add your array of new items to your existing bucket list.

//var newItems = [
//    "Fly hot air balloon to Fiji",
//    "Watch the Lord of the Rings trilogy in one day",
//    "Go on a walkabout",
//    "Scuba dive in the Great Blue Hole",
//    "Find a triple rainbow"
//]
////for item in newItems {
////    bucketList.append(item)
////}
//bucketList += newItems
//bucketList
//bucketList.remove(at: 2)
//print(bucketList.count)
//print(bucketList[0...2])
//bucketList[2] += " in Australia"
//bucketList[0] = "Climb Mt. Kilimanjaro"
//bucketList

//Listing 9.14 Inserting a new ambition
//The insert(_:at:) function has two arguments. The first argument takes the instance to add to the array. (Recall that your array takes String instances.) The second argument takes the index for where you would like to add the new element in the array.

//var newItems = [
//    "Fly hot air balloon to Fiji",
//    "Watch the Lord of the Rings trilogy in one day",
//    "Go on a walkabout",
//    "Scuba dive in the Great Blue Hole",
//    "Find a triple rainbow"
//]
//bucketList += newItems
//bucketList
//bucketList.remove(at: 2)
//print(bucketList.count)
//print(bucketList[0...2])
//bucketList[2] += " in Australia"
//bucketList[0] = "Climb Mt. Kilimanjaro"
//bucketList.insert("Toboggan across Alaska", at: 2)
//bucketList


//ARRAY EQUALITY

//Listing 9.15 Checking two arrays for equality

//var newItems = [
//    "Fly hot air balloon to Fiji",
//    "Watch the Lord of the Rings trilogy in one day",
//    "Go on a walkabout",
//    "Scuba dive in the Great Blue Hole",
//    "Find a triple rainbow"
//]
//bucketList += newItems
//bucketList
//bucketList.remove(at: 2)
//print(bucketList.count)
//print(bucketList[0...2])
//bucketList[2] += " in Australia"
//bucketList[0] = "Climb Mt. Kilimanjaro"
//bucketList.insert("Toboggan across Alaska", at: 2)
//bucketList
//var myronsList = [
//    "Climb Mt. Kilimanjaro",
//    "Fly hot air balloon to Fiji",
//    "Toboggan across Alaska",
//    "Go on a walkabout in Australia",
//    "Find a triple rainbow",
//    "Scuba dive in the Great Blue Hole"
//]
//let equal = (bucketList == myronsList)

//Listing 9.16 Fixing myronsList

var newItems = [
    "Fly hot air balloon to Fiji",
    "Watch the Lord of the Rings trilogy in one day",
    "Go on a walkabout",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]
bucketList += newItems
bucketList
bucketList.remove(at: 2)
print(bucketList.count)
print(bucketList[0...2])
bucketList[2] += " in Australia"
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList.insert("Toboggan across Alaska", at: 2)
bucketList
var myronsList = [
    "Climb Mt. Kilimanjaro",
    "Fly hot air balloon to Fiji",
    "Toboggan across Alaska",
    "Go on a walkabout in Australia",
    //"Find a triple rainbow",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]
let equal = (bucketList == myronsList)


//INMUTABLE ARRAYS

let lunches = [
    "Cheeseburger",
    "Veggie Pizza",
    "Chicken Caesar Salad",
    "Black Bean Burrito",
    "Falafel Wrap"
]

//You use the let keyword to create an immutable array. If you were to try to modify the array in any way, the compiler would issue an error stating that you cannot mutate an immutable array.


// BRONZE CHALLENGE

var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]
toDoList.count
print(toDoList[0...2])

//SILVER CHALLENGE

var oppositeArray = [String]()

for item in toDoList {
    oppositeArray.insert(item, at: 0)
}

print(oppositeArray)

//GOLD CHALLENGE

let index = bucketList.index(of: "Fly hot air balloon to Fiji")
let newIndex = index! + 2
let newString = bucketList[newIndex]
print(newString)


