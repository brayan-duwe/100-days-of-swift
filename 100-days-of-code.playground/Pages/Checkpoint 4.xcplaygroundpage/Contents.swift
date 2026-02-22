enum squareRootError: Error {
    case numberHigherOrLower
    case noRoot
    
}

func squareRoot(_ number: Int) throws -> Int {
    if number < 1 || number > 10000 {
        throw squareRootError.numberHigherOrLower
    }
    for root in 1..<number {
        root * root
        if root * root == number {
            return root
        }
    }
    throw squareRootError.noRoot
}
    
try squareRoot(25)
