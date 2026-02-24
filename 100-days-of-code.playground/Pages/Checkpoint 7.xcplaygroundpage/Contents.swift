class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Roufh")
    }
}
class Corgi: Dog {
    override func speak() {
        print("rufff")
    }
}
class Poodle: Dog {
    override func speak() {
        print("rufii")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(legs: Int, isTame: Bool){
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Miau")
    }
}

class Persian: Cat {
    override func speak() {
        print("Miaaauu")
    }
}

class Lion: Cat {
    override func speak() {
        print("MIAU")
    }
}
