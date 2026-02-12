import UIKit

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")


// INHERITANCE

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}


// OVERRIDING METHODS

class DogTwo {
    func makeNoise() {
        print("Woof!")
    }
}

class PoodleTwo: DogTwo {
    override func makeNoise() {
        print("Yip!")
    }
}


// FINAL CLASSES

final class DogThree {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

// COPYING OBJECTS

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)


// DEINITIALIZERS

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}


// MUTABILITY

class SingerTwo {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)
