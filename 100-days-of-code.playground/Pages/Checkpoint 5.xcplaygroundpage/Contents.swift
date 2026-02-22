let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func showLuckyNumbers(_ numbers : [Int]) -> [String]{
    var oddNumbers = numbers.filter{$0 % 2 != 0}
    oddNumbers.sort()
    let mappedNumbers = oddNumbers.map{"\($0) is a lucky number"}
    return mappedNumbers
}

showLuckyNumbers(luckyNumbers)
