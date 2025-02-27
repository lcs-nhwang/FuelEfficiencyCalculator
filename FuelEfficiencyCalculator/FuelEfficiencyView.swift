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
                
                
                HStack(alignment: .center) {
                    HStack(alignment: .top) {
                        
                        
                        
                        Text("\(fuelEfficiency.distanceTravelled.formatted())")
                            .font(.system(size: 96))
                        
                        
                        Text("x")
                            .font(.system(size: 96))
                        
                        Text("\(fuelEfficiency.fuelUsed.formatted())")
                            .font(.system(size: 96))
                        
                    }
                    HStack {
 
                        Text("=")
                            .font(.system(size: 96))
 
                        Text("\(fuelEfficiency.result.formatted())")
                            .font(.system(size: 96))
                    }
                }
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .frame(height: 300)
 
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
            TextField("Distance Travelled", text: $viewModel.providedDistance)
                .textFieldStyle(.roundedBorder)
            
            TextField("Fuel Used", text: $viewModel.providedFuelUsed)
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
