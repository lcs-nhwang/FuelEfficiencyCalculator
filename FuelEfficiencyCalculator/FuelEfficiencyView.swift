//
//  ContentView.swift
//  FuelEfficiencyCalculator
//
//  Created by Nicholas Hwang on 27/2/2025.
//

import SwiftUI

struct FuelEfficiencyView: View {
    //MARK: Stored Properties
    @State var viewModel = FuelEffiViewModel()
    //MARK: Computed Properties
    var body: some View {
        VStack {
            
            // Extra space at top
            Spacer()
            
            if let fuelEfficiency = viewModel.fuelEfficiency {
                
                VStack(alignment: .center) {
                    Text("Fuel Used: \(fuelEfficiency.fuelUsed.formatted())")
                        .font(.system(size: 46))
                    Spacer()
                    Text("Distance Travelled: \(fuelEfficiency.distanceTravelled.formatted())")
                        .font(.system(size: 46))
                    Spacer()
                    Text("The Fuel Efficiency is \(fuelEfficiency.result.formatted()) L per 100 km.")
                        .font(.system(size: 46))
                    Spacer()
                }
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .frame(height: 300)
                // Add a button so that the result can be saved
                Button {
                    viewModel.saveResult()
                    // DEBUG: Show how many items are in the resultHistory array
                    print("There are \(viewModel.resultHistory.count) elements in the resultHistory array.")
                } label: {
                    Text("Save")
                }
                .buttonStyle(.borderedProminent)
                .padding(.bottom)

 
            } else {
                
                // Show a message indicating that we are
                // awaiting reasonable input
                ContentUnavailableView(
                    "Unable to evaluate fuel efficiency",
                    systemImage: "gear.badge.questionmark",
                    description: Text(viewModel.recoverySuggestion)
                )
                .frame(height: 300)
            }
            
            // INPUT
            TextField("Fuel Used", text: $viewModel.providedFuelUsed)
                .textFieldStyle(.roundedBorder)
            
            TextField("Distance Travelled", text: $viewModel.providedDistance)
                .textFieldStyle(.roundedBorder)
 
            // Extra space at bottom
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FuelEfficiencyView()
}
