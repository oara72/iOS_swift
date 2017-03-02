//: Playground - noun: a place where people can play

//Student Name: Oliver Rodriguez
//Student ID: W0668948
//Assignment 5: Chapter 11


import Cocoa

//var str = "Hello, playground"

//Listing 11.1 Creating a set

//var groceryBag = Set<String>()

//You made an instance of Set and declared that it will hold instances of the String type. It is a mutable Set called groceryBag and is currently empty. Let’s fix that. You can add groceries to your groceryBag using the insert(_:) method.

//Listing 11.2 Adding to a set

//var groceryBag = Set<String>()
//groceryBag.insert("Apples")
//groceryBag.insert("Oranges")
//groceryBag.insert("Pineapple")

//Listing 11.3 Looping through a set

//var groceryBag = Set<String>()
//groceryBag.insert("Apples")
//groceryBag.insert("Oranges")
//groceryBag.insert("Pineapple")
//for food in groceryBag {
//    print(food)
//}

//Listing 11.4 Creating a set, redux

//var groceryBag = Set /*<String>*/ (["Apples", "Oranges", "Pineapple"])
////groceryBag.insert("Apples")
////groceryBag.insert("Oranges")
////groceryBag.insert("Pineapple")
//for food in groceryBag {
//    print(food)
//}

//Listing 11.5 Has bananas?

//var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]
//for food in groceryBag {
//    print(food)
//}
//let hasBananas = groceryBag.contains("Bananas")

//The value of hasBananas is false; your groceryBag does not have any bananas inside of it.


//Listing 11.6 Combining sets

//var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]
//for food in groceryBag {
//    print(food)
//}
//let hasBananas = groceryBag.contains("Bananas")
//let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
//let commonGroceryBag = groceryBag.union(friendsGroceryBag)

//Listing 11.7 Intersecting sets

//var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]
//for food in groceryBag {
//    print(food)
//}
//let hasBananas = groceryBag.contains("Bananas")
//let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
//let commonGroceryBag = groceryBag.union(friendsGroceryBag)
//
//let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
//let itemsToReturn = commonGroceryBag.intersection(roommatesGroceryBag)

//Listing 11.8 Detecting intersections in sets

//var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]
//
//for food in groceryBag {
//    print(food)
//}
//let hasBananas = groceryBag.contains("Bananas")
//let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
//let commonGroceryBag = groceryBag.union(friendsGroceryBag)
//
//let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
//let itemsToReturn = commonGroceryBag.intersection(roommatesGroceryBag)
//
//let yourSecondBag = Set(["Berries", "Yogurt"])
//let roommatesSecondBag = Set(["Grapes", "Honey"])
//let disjoint = yourSecondBag.isDisjoint(with: roommatesSecondBag)

// BRONZE CHALLENGE

let myCities: Set = ["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"]

let yourCities: Set = ["Chicago", "San Francisco", "Jacksonville"]

//let disjoint = yourCities.isSubset(of: myCities)
let disjoint = yourCities.isSuperset(of: myCities)






