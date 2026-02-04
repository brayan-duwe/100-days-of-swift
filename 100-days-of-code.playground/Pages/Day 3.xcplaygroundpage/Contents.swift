import UIKit

// ARITHMETIC OPERATORS

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder  = 13 % secondScore


// OPERATOR OVERLOADING

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf


// COMPOUND ASSIGNMENT OPERATORS

var score = 10
score += 5

var quote = "The quick brown fox jumps over the lazy "
quote += "dog."


// COMPARASION OPERATORS

let thirdScore = 6
let fourthScore = 4

thirdScore == fourthScore
thirdScore != fourthScore

thirdScore < fourthScore
thirdScore >= fourthScore

"Brayan" <= "Duwe"


// CONDITIONS

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// COMBINING CONDITIONS

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}


// TERNARY OPERATORS

let thirdCard = 11
let fourthCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")


// SWITCH STATEMENTS

let weather = "sunny"

switch weather {
case "sunny":
    print("Wear sunscreen")
case "rain":
    print("Grab your umbrella")
case "snow":
    print("Wrap up warm")
default:
    print("Enjoy the day!")
}


// RANGE OPERATORS

let newScore = 85

switch newScore {
case 0..<50: // ..< excludes the final value, if you want to include, use ...
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
