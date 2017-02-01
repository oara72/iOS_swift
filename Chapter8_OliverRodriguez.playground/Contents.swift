//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

///////////8.1
//how to create an optional type
//var errorCodeString: String? //we create an string variable with ? at the end
//errorCodeString = "404"

///////////8.2
//print (errorCodeString)// this print an optional "404"

//////////8.3
//var errorCodeString: String?
//errorCodeString = "404" // when we comment this the print value is nil
//print (errorCodeString)

//////////8.4
//adding condition
//var errorCodeString: String?
//errorCodeString = "404"
//if errorCodeString != nil {   //this "if" check if the value is nil
//    let theError = errorCodeString! //This "!" does a forced unwrapping which wrap the value 404
//    print (theError)
//}


/////////8.5
//optional binding

//var errorCodeString: String?
//errorCodeString = "404"
//if let theError = errorCodeString{// we declare the constant inside of the "if"
//    print (theError) // if there is a value within the option. it will execute the block of code inside of the if
//}


/////////////8.6
//nesting optional binding
//var errorCodeString: String?
//errorCodeString = "404"
//if let theError = errorCodeString{
//    if let errorCodeInterger = Int(theError){ //we convert the constant to an integer type
//        print("\(theError): \(errorCodeInterger)")
//    }
//}

///////////8.7
//ungrapping multiple optionals
//var errorCodeString: String?
//errorCodeString = "404"
////in the next line we unwrap two optional in a single line.
////first errorCodeString is unwapped and theError take the value
////The Int try to convert theError to an interger
//if let theError = errorCodeString, let errorCodeInterger = Int(theError){
//        print("\(theError): \(errorCodeInterger)")
//
//}

//////////8.8
//optional binding
//var errorCodeString: String?
//errorCodeString = "404"
//if let theError = errorCodeString, let errorCodeInterger = Int(theError),
//    errorCodeInterger == 404{ //this third condition is only execute if both optionals are succesfully unwraped
//    print("\(theError): \(errorCodeInterger)")
//
//}

///////////8.9
//optional chaining
var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?
if let theError = errorCodeString, let errorCodeInterger = Int(theError),
    errorCodeInterger == 404{
    errorDescription = "\(errorCodeInterger + 200): resource was not found."// here we add 200 to the errorCodeInterger
}
var upCaseErrorDescription = errorDescription?.uppercased()// we use optional chaining to create a new instance of the error description
//the question mark signal that this line of code initiates the optional chaining process
errorDescription


/////////////8.10
//MODIFYING AN OPTIONAL IN PLACE
// we can modify an optional in place and we dont have to create a new variable
upCaseErrorDescription?.append("PLEASE TRY AGAIN.")
upCaseErrorDescription

////////////8.11
//the nil coalescing Operator
//using optional binding to parse errorDescription
//let description: String
//if let errorDescription = errorDescription{
//    description = errorDescription
//}
//else{
//    description = "No Error"// if the doesn't contain a error it will display "no error"
//}

//////////////8.12
//using the nil coalescing operator
//the lefthand side of "??" must be optional
//the rigthand side must be a nonoptional of the same type
//let description = errorDescription ?? "no error"


//////////////8.13
//changing the errorDesciption so it doesn't contain error
errorDescription = nil
let description = errorDescription ?? "no error"


