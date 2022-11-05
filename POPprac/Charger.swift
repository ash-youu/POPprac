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
