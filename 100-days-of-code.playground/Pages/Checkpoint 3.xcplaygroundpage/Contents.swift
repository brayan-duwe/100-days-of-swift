for number in 1...100 {
    switch number {
    case let n where n.isMultiple(of: 3) && n.isMultiple(of: 5):
        print("FizzBuzz")
    case let n where n.isMultiple(of: 3):
        print("Fizz")
    case let n where n.isMultiple(of: 5):
        print("Buzz")
    default:
        print(number)
    }
}
