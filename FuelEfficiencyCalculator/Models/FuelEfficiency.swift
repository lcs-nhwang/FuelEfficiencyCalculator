//
//  FuelEfficiency.swift
//  FuelEfficiencyCalculator
//
//  Created by Nicholas Hwang on 27/2/2025.
//

import Foundation

struct FuelEfficiency {
    //MARK: Stored Properties
    var distanceTravelled: Double
    var fuelUsed: Double
    //MARK: COmputed Properties
    var result: Double {
        return (fuelUsed/distanceTravelled)*100
    }
}

