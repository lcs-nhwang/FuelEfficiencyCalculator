//
//  FuelEfficiencyItemView.swift
//  FuelEfficiencyCalculator
//
//  Created by Nicholas Hwang on 27/2/2025.
//
import SwiftUI
 
struct FuelEfficiencyItemView: View {
    
    // MARK: Stored properties
    let fuelEfficiency: FuelEfficiency
    
    // MARK: Computed properties
    var body: some View {
        
        HStack(alignment: .center) {
            Text("Fuel: \(fuelEfficiency.fuelUsed.formatted())")
            Text("Distance: \(fuelEfficiency.distanceTravelled.formatted())")
            Text("Fuel Efficiency: \(fuelEfficiency.result.formatted())")
        }
        .lineLimit(1)
        .minimumScaleFactor(0.5)
        
    }
}
 
#Preview {
    List {
        FuelEfficiencyItemView(fuelEfficiency: FuelEfficiency(distanceTravelled: 900, fuelUsed: 9))
        FuelEfficiencyItemView(fuelEfficiency: FuelEfficiency(distanceTravelled: 800, fuelUsed: 8))
        FuelEfficiencyItemView(fuelEfficiency: FuelEfficiency(distanceTravelled: 700, fuelUsed: 7))
            .listStyle(.plain)
    }
}
