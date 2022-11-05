//
//  MacBook.swift
//  POPprac
//

struct MacBook {
    var allowableWattPerHour: WattPerHour
    var currentStoredBatteryCapacity: WattPerHour
    let maximumBatteryCapacity: WattPerHour = 100
    
    mutating func chargeBattery(charger: Chargerable) {
        let wattPerHour = charger.convert(chargeableWattPerHour: allowableWattPerHour)
        
        let timeToCarge: WattPerHour = (maximumBatteryCapacity - currentStoredBatteryCapacity) / wattPerHour
        
        currentStoredBatteryCapacity = 100
        print("완전히 충전하는 데 걸린 시간은 \(timeToCarge)시간 입니다.")
    }
}
