import UIKit

// INITIALIZERS

struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"


// REFEERING TO THE CURRENT INSTANCE

struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}


// LAZY PROPERTIES

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct PersonTwo {
    var name: String
    lazy var familyTree = FamilyTree() // Will only create the familyTree struct when it's first accessed

    init(name: String) {
        self.name = name
    }
}

var ed = PersonTwo(name: "Ed")
ed.familyTree


// STATIC PROPERTIES AND METHODS

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let brayan = Student(name: "Brayan")
let benito = Student(name: "Benito")
print(Student.classSize)


// ACCESS CONTROL

struct PersonTree {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}
