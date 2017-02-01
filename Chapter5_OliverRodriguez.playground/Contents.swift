//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

//SWITCH IT UP

//Listing 5.1 Your first switch

//var statusCode: Int = 404
//var errorString: String
//
//switch statusCode {
//case 400:
//    errorString = "Bad request"
//    
//case 401:
//    errorString = "Unauthorized"
//    
//case 403:
//    errorString = "Forbidden"
//    
//case 404:
//    errorString = "Not found"
//default:
//    errorString = "None"
//}

//Listing 5.2 Switch cases can have multiple values


//var statusCode: Int = 404
//var errorString: String = "The request failed:"
//
//switch statusCode {
//case 400, 401, 403, 404:
//    errorString = "There was something wrong with the request."
//    fallthrough
//default:
//    errorString += " Please review the request and try again."
//}

//RANGES

//Listing 5.3 Switch cases can have single values, multiple values, or ranges of vales

//var statusCode: Int = 404
//var errorString: String = "The request failed:"
//
//switch statusCode {
//case 100, 101:
//    errorString += " Informational, 1xx."
//    
//case 204:
//    errorString += " Successful but no content, 204."
//    
//case 300...417:
//    errorString += " Redirection, 3xx"
//    
//case 400...417:
//    errorString += " Client error, 4xx"
//    
//case 500...505:
//    errorString += " Server error, 5xx"
//    
//case let unknownCode:
//    errorString = "\(unknownCode) is not a know error code"
//}

//VALUE BINDING 

//var statusCode: Int = 404
//var errorString: String = "The request failed:"
//
//switch statusCode {
//case 100, 101:
//    errorString += " Informational, \(statusCode)."
//    
//case 204:
//    errorString += " Successful but not content, 204"
//    
//case 300...417:
//    errorString += " Redirection, \(statusCode)."
//    
//case 400...417:
//    errorString += " Client error, \(statusCode)."
//    
//case 500...505:
//    errorString += " Server error, \(statusCode)."
//    
////case let unknownCode:
////    errorString = "\(unknownCode) is not a know error code."
//    
////    Listing 5.5. Reverting to the default case
//default:
//    errorString = "\(statusCode) is not a known error code."
//}

//Listing 5.6 using where to create a filter

//var statusCode: Int = 404
//var statusCode: Int = 204
//var errorString: String = "The request failed with the error:"
//
//switch statusCode {
//case 100, 101:
//    errorString += " Informational, \(statusCode)."
//    
//case 204:
//    errorString += " Successful but not content, 204"
//    
//case 300...417:
//    errorString += " Redirection, \(statusCode)."
//    
//case 400...417:
//    errorString += " Client error, \(statusCode)."
//    
//case 500...505:
//    errorString += " Server error, \(statusCode)."
//    
//case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
//    errorString = "\(unknownCode) is not a know error code."
//    
//default:
//    errorString = "Unexpected error encountered."
//}

//TUPLES AND PATTERN MATCHING

//Listing 5.7 creating a tuple

//var statusCode: Int = 204
var statusCode: Int = 418
var errorString: String = "The request failed with the error:"

switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)."
    
case 204:
    errorString += " Successful but not content, 204."
    
case 300...417:
    errorString += " Redirection, \(statusCode)."
    
case 400...417:
    errorString += " Client error, \(statusCode)."
    
case 500...505:
    errorString += " Server error, \(statusCode)."
    
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a know error code."
    
default:
    errorString = "Unexpected error encountered."
}

//let error = (statusCode, errorString)


//Listing 5.8 Accessing the elements of a tuple

//error.0
//error.1

//Listing 5.9 Naming the tuple's elements

//let error = (code: statusCode, error: errorString)
//error.code
//error.error

//Listing 5.10 Pattern matching in tuples

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
    case(404, 404):
        print("No items found.")
    case(404, _):
        print("First item not found.")
    case(_, 404):
        print("Second item not found");
default:
        print("All items found.")
}

//Switch vs If/else
//Listing 5.11 Single-case switch

let age = 25
//switch age {
//case 18...35:
//    print("Cool demographic")
//default:
//    break
//}

//Listing 5.12 if-Case

//if case 18...25 = age {
//    print("Cool demographic")
//}

if case 18...35 = age, age >= 21 {
    print("In cool demographic and of drinking age")
}

//BRONZE CHALLENGE

let point = (x: 1, y: 4)

switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
    
case let q2 where (point.x < 0) && point.y > 0:
    print("\(q2) in in quadrant 2")
    
case let q3 where (point.x < 0) && point.y < 0:
    print("\(q3) is in quadrant 3")
    
case let q4 where (point.x > 0) && point.y < 0:
    print("\(q4) is ins quadrant 4")
    
case (_, 0):
    print("\(point) sits on the x-axis")
    
case (0, _):
    print("\(point) sits on the y-axis")
    
default:
    print("Case not covered.")
    
}

//SILVER CHALLENGE





