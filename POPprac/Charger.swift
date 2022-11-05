//
//  Charger.swift
//  POPprac
//

typealias WattPerHour = Int
typealias Watt = Int

protocol Chargerable {
    var maximumWattPerHour: WattPerHour { get set }
    
    func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour
}

struct Charger: Chargerable {
    var maximumWattPerHour: WattPerHour
    
    func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour {
        if maximumWattPerHour <= chargeableWattPerHour {
            return maximumWattPerHour
        } else {
            return chargeableWattPerHour
        }
    }
}

let appleWatchCharger = Charger(maximumWattPerHour: 5)
let iPhoneFastCharger = Charger(maximumWattPerHour: 18)
let iPadCharger = Charger(maximumWattPerHour: 30)
let macBookCharger = Charger(maximumWattPerHour: 96)
let macBookFastCharger = Charger(maximumWattPerHour: 106)
