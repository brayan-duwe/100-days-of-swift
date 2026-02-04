import UIKit

// ARRAYS

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
let beatles = [john, paul, george, ringo]


// SETS

let colors = Set(["red, green, blue"])

let colors2 = Set(["red, green, blue, red, green"]) // the duplicates will be ignored


// TUPLES

var name = (first:"Brayan", last: "Duwe")

name.first
name.0


// ARRAYS vs. SETS vs. TUPLES

// For specific, fixed collection of related values where each item has a precise position or name, use a tuple:
let adress = (house: 555, street: "3345 Oak St", city: "San Francisco")

// For collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, use a set:

let set = Set(["banana", "dolphin", "elephant"])

// For collection of values that can contain duplicates, or the order of your items matters, use an array:

let pythons = ["Eric", "Michael", "Graham", "Terry", "Terry"]


// DICTIONARIES

let heights = [
    "Josh Dun": 1.82,
    "Tyler Joseph": 1.85,
]

heights["Brayan", default: 1.90] // default is used when the key doesn't exists on the dictionary


// EMPTY COLLECTIONS

var teams = [String: String]() // empty dictionary
teams ["Paul"] = "Red"
var teams2 = Dictionary<String, Int>() // also empty dictionary

var results = [Int]() // empty array
var results2 = Array<Int>() // also empty array

var words = Set<String>() // empty set


// ENUMERATIONS

enum Result {
    case failure
    case success
}

let case4 = Result.failure


// ENUM ASSOCIATED VALUES

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
}

let talking = Activity.talking(topic: "football")


// ENUM RAW VALUES

enum Planet: Int {
    case mercury // = 1 -> you can assign a value, and swift will generate the rest
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)
