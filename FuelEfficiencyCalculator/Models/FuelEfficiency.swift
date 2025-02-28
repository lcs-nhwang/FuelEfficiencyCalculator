//
//  FuelEfficiency.swift
//  FuelEfficiencyCalculator
//
//  Created by Nicholas Hwang on 27/2/2025.
//

import Foundation

struct FuelEfficiency: Identifiable {
    //MARK: Stored Properties
    let id = UUID()
    var distanceTravelled: Double
    var fuelUsed: Double
    //MARK: COmputed Properties
    var result: Double {
        return (fuelUsed/distanceTravelled)*100
    }
}

