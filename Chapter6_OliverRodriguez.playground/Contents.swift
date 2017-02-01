//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

//Listing 6.1 A for-in loop

var myFirstInt: Int = 0

//for i in 1...5 {
//    myFirstInt += 1
//    myFirstInt
//    print(myFirstInt)
//}


//    Listing 6.2 Printing the changing value of 1 to the console.

//for i in 1...5 {
//    myFirstInt += 1
//    myFirstInt
//    print("myFirstInt equals \(MyFirstInt) at iteration \(i)")
//}

//Listing 6.3 Replacing i with _

//for _ in 1...5 {
//    myFirstInt += 1
//    myFirstInt
//    print(myFirstInt)
//}

//Where

//Listing 6.4 for-in lopp with a where clause

//for _ in 1...5 {
//    myFirstInt += 1
//    myFirstInt
//    print(myFirstInt)
//}
//
//for i in 1...100 where i % 3 == 0 {
//    print (i)
//}


//WHILE LOOPS
//Listing 6.5 a While loop
//var i = 1
//while 1 < 6 {
//    myFirstInt += 1
//    print(myFirstInt)
//    i += 1
//}


//CONTROL TRANSFER STATEMENT REDUX

//Listing 6.6. using continue

//var shields = 5
//var blastersOverheating = false
//var blasterFireCount = 0
//while shields > 0 {
//    if blastersOverheating {
//        print("Blaster are overhead! Cooldown initiated.")
//        sleep(5)
//        print("Blaster ready to fire")
//        sleep(1)
//        blastersOverheating = false
//        blasterFireCount = 0
//    }
//    
//    if blasterFireCount > 100 {
//        blastersOverheating = true
//        continue
//    }
//    //Fire blaster!
//    print("Fire blasters!")
//}


//Listing 6.7 using break

var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
    
    if spaceDemonsDestroyed == 500 {
        print("you beat the game!")
        break
    }
    if blastersOverheating {
        print("Blaster are overhead! Cooldown initiated.")
        sleep(5)
        print("Blaster ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
    }
    
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue
    }
    //Fire blaster!
    print("Fire blasters!")
    spaceDemonsDestroyed += 1
}

//SILVER CHALLENGE

var i = 0
var fizz = "FIZZ"
var buzz = "BUZZ"
var booth = "FIZZ BUZZ"

for i in 1...100 {
    
    if (i % 3 == 0 && i % 5 == 0) {
        print (booth)
    }
    if i % 3 == 0 {
    print (fizz)
    }
    
    if i % 5 == 0{
        print(buzz)
    }
    
    else {
        print (i)
    }

}









      
