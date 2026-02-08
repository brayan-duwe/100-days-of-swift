import UIKit

// BASIC CLOSURES + ACCEPTING PARAMETERS

let driving = {(place: String) in
    print("I'm going to \(place) in my car")
}
driving("London")


// RETURNING VALUES

let drivingWithReturn = {(place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)


// CLOSURE AS PARAMETERS

let drivingAgain = {
    print("I'm driving im my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: drivingAgain)

// OR, USING TRAILING CLOSURES

travel {
    print("I'm driving im my car")
}


// CLOSURES AS PARAMETERS WHEN THEY ACCEPT PARAMETERS

func newTravel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

newTravel { (place: String) in
    print("I'm going to \(place) in my car")
}


// CLOSURES AS PARAMETERS WHEN THEY RETURN VALUES

func travelThree(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travelThree { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


// SHORTHAND SYNTAX FOR PARAMETER NAMES

travelThree { place in
    "I'm going to \(place) in my car"
}
//OR

travelThree {
    "I'm going to \($0) in my car"
}


// MULTIPLE PARAMETERS

func travelFour (action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travelFour {
    "I'm going to \($0) at \($1) miles per hour."
}


// RETURNING CLOSURES FROM FUNCTIONS

func travelFive() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travelFive()
result("London")


// CAPTURING VALUES

func travelSix() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let resultSix = travelSix()
resultSix("London")
resultSix("London")
resultSix("London")
