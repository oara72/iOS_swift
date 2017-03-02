//IOS Development 
// Oliver A. Rodriguez
// W0668948

//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

//Listing 13.1 Starting with an array

let volunteerCounts = [1,3,40,32,2,53,77,13]

//Listing 13.2 Sorting the array

let volunteerCountsb = [1,3,40,32,2,53,77,13]
func sortAscending(_ i: Int, _ j: Int) -> Bool {
    return i < j
}
let volunteersSorted =
    volunteerCountsb.sorted(by: sortAscending)

//Listing 13.3 Refactoring your sorting code

let volunteerCountsc = [1,3,40,32,2,53,77,13]
let volunteersSortedc = volunteerCountsc.sorted(by: {
    (i: Int, j: Int) -> Bool in
    return i < j
})


//Listing 13.4 Taking advantage of type inference

let volunteerCountsd = [1,3,40,32,2,53,77,13]
let volunteersSortedd = volunteerCountsd.sorted(by: { i, j in i < j })

//Listing 13.5 Using shorthand syntax for arguments

let volunteerCountse = [1,3,40,32,2,53,77,13]
let volunteersSortede = volunteerCountse.sorted(by: { $0 < $1 })

//Listing 13.6 Inline closure as the function’s final argument

let volunteerCountsf = [1,3,40,32,2,53,77,13]
let volunteersSortedf = volunteerCountsf.sorted { $0 < $1 }

//Functions as Return Types

//Listing 13.7 Return to Knowhere

let volunteerCountsg = [1,3,40,32,2,53,77,13]
let volunteersSortedg = volunteerCountsg.sorted { $0 < $1 }
func makeTownGrand() -> (Int, Int) -> Int {
    func buildRoads(byAddingLights lights: Int,
                    toExistingLights existingLights: Int) -> Int {
        return lights + existingLights
    }
    return buildRoads
}

//Listing 13.8 The roads to Knowhere

let volunteerCountsh = [1,3,40,32,2,53,77,13]
let volunteersSortedh = volunteerCountsh.sorted { $0 < $1 }
func makeTownGrandb() -> (Int, Int) -> Int {
    func buildRoadsb(byAddingLightsb lightsb: Int,
                    toExistingLightsb existingLightsb: Int) -> Int {
        return lightsb + existingLightsb
    }
    return buildRoadsb
}
var stoplights = 4
let townPlanByAddingLightsToExistingLights = makeTownGrand()
stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
print("Knowhere has \(stoplights) stoplights.")


//Functions as Arguments
// Listing 13.9 Adding budget considerations

let volunteerCountsi = [1,3,40,32,2,53,77,13]
let volunteersSortedi = volunteerCountsi.sorted { $0 < $1 }

func makeTownGrandc(withBudget budget: Int,
                    condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    
                    if condition(budget) {
                        
                    func buildRoadsc(byAddingLightsc lights: Int,
                                     toExistingLightsc existingLightsc: Int) -> Int {
                        return lights + existingLightsc
                        }
                        return buildRoadsc
                            } else {
                                return nil
                            }
                        }
                        func evaluate(budget: Int) -> Bool {
                            return budget > 10_000
                        }
var stoplightsb = 4
if let townPlanByAddingLightsToExistingLightsb = makeTownGrandc(withBudget: 1_000,
    condition: evaluate) {
    
    stoplightsb = townPlanByAddingLightsToExistingLightsb(4, stoplightsb)
}
print("Knowhere has \(stoplightsb) stoplights.")

// Listing 13.10 Builgin more roads

let volunteerCountsj = [1,3,40,32,2,53,77,13]
let volunteersSortedj = volunteerCountsj.sorted { $0 < $1 }

func makeTownGrandj(withBudget budget: Int,
                    condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    
    if condition(budget) {
        
        func buildRoadsj(byAddingLightsj lights: Int,
                         toExistingLightsj existingLightsj: Int) -> Int {
            return lights + existingLightsj
        }
        return buildRoadsj
    } else {
        return nil
    }
}
func evaluatej(budgetj: Int) -> Bool {
    return budgetj > 10_000
}
var stoplightsj = 4
if let townPlanByAddingLightsToExistingLightsj = makeTownGrandj(withBudget: 1_000,
                                                                condition: evaluatej) {
    
    stoplightsj = townPlanByAddingLightsToExistingLightsj(4, stoplightsj)
}
if let newTownPlanByAddingLightsToExistingLightsj
    = makeTownGrandj(withBudget: 10_500, condition: evaluatej) {
    stoplightsj = newTownPlanByAddingLightsToExistingLightsj(4, stoplights)
}
print("Knowhere has \(stoplightsj) stoplights.")

//Closures Capture Values

//Listing 13.11 Tracking growth


func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int {
    var totalPopulation = population

    func populationTracker(growth: Int) -> Int {
        totalPopulation += growth
        return totalPopulation
    }
    return populationTracker
}
var currentPopulation = 5_422
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation)

//Listing 13.12 The population is booming

growBy(500)
growBy(500)
growBy(500)
currentPopulation = growBy(500) // currentPopulation is now 7422


//CLOSURES ARE REFERENCE TYPES

let anotherGrowBy = growBy
anotherGrowBy(500) // totalPopulation now equal to 7922

//Listing 13.14 Another population to track

var bigCityPopulation = 4_061_981
let bigCityGrowBy = makePopulationTracker(forInitialPopulation: bigCityPopulation)
bigCityPopulation = bigCityGrowBy(10_000)
currentPopulation

/************************/
// FUNCTIONAL PROGRAMMING.
/************************/

//Higher-order functions

//a) sorted(by:)

//b) map(_:)  -- is a function that you can use to transform an array’s contents.

//c) filter(_:) -- Its purpose is to filter an array based upon some criteria. The resulting array will contain the values of the original array that passed the test.

//d) reduce(_:_:) --  Its job is to reduce the values in the collection to a single value that is returned from the function.


//Listing 13.15 Setting populations by precinct

let precinctPopulations = [1244, 2021, 2157]

//Listing 13.16 Using map(_:) to estimate population

//let precinctPopulations = [1244, 2021, 2157]
let projectedPopulations = precinctPopulations.map {
    (population: Int) -> Int in
    return population * 2
}
projectedPopulations

//Listing 13.17 Filtering an array

let bigProjections = projectedPopulations.filter {
    (projection: Int) -> Bool in
    return projection > 4000
}
bigProjections

//Listing 13.18 Reducing an array to a single value

let totalProjection = projectedPopulations.reduce(0) {
    (accumulatedProjection: Int, precinctProjection: Int) -> Int in
    return accumulatedProjection + precinctProjection
}
totalProjection

// GOLDEN CHALLENGE

//Use what you have learned in this chapter to clean up the implementation of reduce(_:_:)
//presented above. The implementation can be shortened quite significantly: Your solution
//should be expressed in one line. When you are done, take a look at the sample code for the
//other higher-order functions and practice with them.

let TotalProjection = projectedPopulations.reduce(0) { $0 + $1 }












