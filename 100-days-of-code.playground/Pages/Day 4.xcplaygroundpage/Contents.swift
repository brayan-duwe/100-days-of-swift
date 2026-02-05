import UIKit

// FOR

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albuns = ["Red", "1989", "Reputation"]

for album in albuns {
    print("\(album) is on Apple Music")
}

for _ in 1...5 {
    print("play")
}

var numbers = [1, 2, 3, 4, 5, 6]
for number in numbers {
    if number % 2 == 0 {
        print(number)
    }
}


// WHILE - use break to exit a loop any time.

var number  = 1

while number <= 10 {
    print("The actual number is: \(number)")
    number += 1
}
print("Ready or not, here I come!")


// REPEAT LOOPS - Identical to a while loop except the condition to checj comes at the end, making the code runs at least once

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

var counter: Int = 1
while counter < 100 {
    counter += 10
    if counter % 10 == 5 {
        print("Matching number found")
    }
}


// EXITING MULTIPLE LOOPS

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}


// SKIPPING ITEMS

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

// INFINITE LOOPS

var newCounter = 0

while true {
    print(" ")
    counter += 1

    if newCounter == 273 {
        break
    }
}
