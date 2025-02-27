//
//  FuelEffiViewModel.swift
//  FuelEfficiencyCalculator
//
//  Created by Nicholas Hwang on 27/2/2025.
//

import Foundation

@Observable
class FuelEffiViewModel {
    //MARK: Stored Properties
    var providedDistance: String
    var providedFuelUsed: String
    var recoverySuggestion: String = ""
    //MARK: Computed Properties
    var fuelEfficiency: FuelEfficiency? {
        guard let distanceTravelled = Double(providedDistance), distanceTravelled < 0 else {
            recoverySuggestion = "Please provide a number."
            return nil
        }
        guard let fuelUsed = Double(providedFuelUsed) else {
            recoverySuggestion = "Please provide a number."
            return nil
        }
        recoverySuggestion = ""
        return FuelEfficiency(distanceTravelled: distanceTravelled, fuelUsed: fuelUsed)
    }
    //MARK: Initializers
    init(
        providedDistance: String = "",
        providedFuelUsed: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedDistance = providedDistance
        self.providedFuelUsed = providedFuelUsed
        self.recoverySuggestion = recoverySuggestion
    }
}
