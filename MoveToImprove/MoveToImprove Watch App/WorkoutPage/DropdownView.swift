//
//  DropdownView.swift
//  MoveToImprove Watch App
//
//  Created by Marco Cen on 2023-01-21.
//

import Foundation
import SwiftUI

// -- DROPDOWN Menu Carousel-slot machine like Page --
struct DropdownView: View{
    
    // Dropdown Variables Initialized (TODO: Dummy Data for now)
    @State private var selectedOption = "↓ (Select a Category) ↓"
    let options = ["Stretch", "Gym", "Push Day", "Pull Day", "Leg Day", "Running", "Sports", "Climbing", "Boxing", "Tennis"]
    
    var body: some View {
        NavigationView{
        VStack{

            NavigationLink(destination: WorkoutView(selectedOption: selectedOption)) {
                
                // Slot machine type drop down menu
                Picker(selection: $selectedOption, label: Text("Categories")) {
                    ForEach(options, id: \.self){
                        option in Text(option).foregroundColor(self.selectedOption == option ? .green : .white) //UI-UX easier for users to see colour
                    }
                }
                
                // UI-UX Aid
                VStack{
                    Text("Selected:")
                    Text(selectedOption).foregroundColor(Color.green).font(.system(size: 14)) // Green match with dropdown green! Easy on eyes!
                }
    
            }
            // .listStyle(.carousel) //Old design
        }
        
    }
        .navigationBarHidden(true)
    }
}
