//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
//
//Before you begin typing code, let’s take a look at the different ways you can get an instance of
//Dictionary.
//var dict1: Dictionary<String, Double> = [:]
//var dict2 = Dictionary<String, Double>()
//var dict3: [String:Double] = [:]
//var dict4 = [String:Double]()

//Listing 10.1 Creating a dictionary

//var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City" : 4]


// ACCESING AND MODIFYING A DICTIONARY

//Listing 10.2 Using count

//print("I have rated \(movieRatings.count) movies.")

//Listing 10.3 Reading a value from the dictionary

//let darkoRating = movieRatings["Donnie Darko"]

//Listing 10.4 Modifying a value

//movieRatings["Dark City"] = 5
//movieRatings

//Listing 10.5 Updating a value

//let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
//if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"] {
//    print("Old rating: \(lastRating); current rating: \(currentRating)")
//}

//ADDING AN REMOVING VALUES

//Listing 10.6 Adding a value

//movieRatings["The Cabinet of Dr. Caligari"] = 5

//Listing 10.7 Removing a value

//movieRatings.removeValue(forKey: "Dark City")

//Listing 10.8 Setting the key’s value to nil

//movieRatings["Dark City"] = nil

//LOOPING

//Listing 10.9 Looping through your dictionary

//for (key, value) in movieRatings {
//    print("The movie \(key) was rated \(value).")
//}

//Listing 10.10 Just the keys, please

//for movie in movieRatings.keys {
//    print("User has rated \(movie).")
//}

//Immutable Dictionaries
//Creating an immutable dictionary works much the same as creating an immutable array

//Listing 10.11 Creating an immutable dictionary

let album = ["Diet Roast Beef": 268,
             "Dubba Dubbs Stubs His Toe": 467,
             "Smokey's Carpet Cleaning Service": 187,
             "Track 4": 221]

//Translating a Dictionary to an Array
//Listing 10.12 Sending keys to an array

var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City" : 4]
print("I have rated \(movieRatings.count) movies.")
let darkoRating = movieRatings["Donnie Darko"]
movieRatings["Dark City"] = 5
movieRatings
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}
movieRatings["The Cabinet of Dr. Caligari"] = 5
movieRatings["Dark City"] = nil
for (key, value) in movieRatings {
    print("The movie \(key) was rated \(value).")
}
for movie in movieRatings.keys {
    print("User has rated \(movie).")
}
let watchedMovies = Array(movieRatings.keys)

//use the Array() syntax to create a new [String] instance. Inside the (), you pass in the dictionary’s keys. The result is that watchedMovies is a constant instance of the Array type representing all of the movies a user has in the movieRatings dictionary.



// SILVER CHALLENGE


var georgiaState = [

"county1" : ["30306", "30307", "30308", "30309", "30310"],
"county2" : ["30311", "30312", "30313", "30314", "30315"],
"county3" : ["30301", "30302", "30303", "30304", "30305"]

]

var zips = Array(georgiaState.values)

for pobox in zips {
    
    print("Georgia has the following zip codes:", pobox)
    
}



