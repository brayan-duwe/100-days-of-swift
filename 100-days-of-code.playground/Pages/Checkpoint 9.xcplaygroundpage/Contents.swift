func returnValue(numbers: [Int]?) -> Int? { numbers?.randomElement() ?? Int.random(in: 1...100) }

returnValue(numbers: [10, 34, 54, 66])
