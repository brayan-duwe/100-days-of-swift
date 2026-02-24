struct Car {
    enum GearType: String{
        case drive, neutral, reverse, park
    }
    let model: String
    let numberOfSeats: Int
    private var currentGear: GearType
    
    init(model: String, numberOfSeats: Int, currentGear: GearType){
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = currentGear
    }
}

var firstCar = Car(model: "Q5", numberOfSeats: 5, currentGear: .drive)
