protocol Building {
    var rooms: Int { get }
    var cost: Int { get set }
    var sellingAgent: String { get set }
    func salesSummary()
}

struct House: Building {
    
    let rooms = 4
    var cost = 500_000
    var sellingAgent = "Paul"
    
    func salesSummary() {
        print("The house has \(rooms) rooms, costs $\(cost), and is being sold by \(sellingAgent)")
    }
}

struct Office: Building {
    
    let rooms = 12
    var cost = 6_000_000
    var sellingAgent = "Hudson"
    
    func salesSummary() {
        print("The office has \(rooms) rooms, costs $\(cost), and is being sold by \(sellingAgent)")
    }}
