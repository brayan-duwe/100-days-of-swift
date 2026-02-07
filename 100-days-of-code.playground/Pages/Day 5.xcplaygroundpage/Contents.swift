import UIKit


// WRITING FUNCTIONS

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()


// ACCEPTING PARAMETERS + RETURNING VALUES

func square(number: Int) -> Int{
    return number * number
}

square(number: 8)


// OMITTING PARAMETER LABELS - include the underscore + DEFAULT PARAMETERS

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)


// VARIADIC FUNCTIONS

func newSquare(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

newSquare(numbers: 1, 2, 3, 4, 5)


// THROWING FUNCTIONS

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}


// INOUT

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
