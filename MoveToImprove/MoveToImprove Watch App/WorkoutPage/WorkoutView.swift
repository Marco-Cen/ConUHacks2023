//
//  WorkoutView.swift
//  MoveToImprove Watch App
//
//  Created by Marco Cen on 2023-01-21.
//

import SwiftUI
import Foundation

// -- WORKOUT Page --
struct WorkoutView: View {
    
    @State private var dateDetails = DateDetails() //For finding total minutes spent
    var selectedOption : String // Store last saved dropdown selected state
    
    var body: some View {
        
        //Like Columns <col>
        VStack(){
            
            NavigationLink(destination: ContentView()) { //Redirects to another page
                // Logo
                Image("MoveToImprove").resizable().aspectRatio(contentMode: .fit).frame(width:185, height: 110)
            }
            
            //Like Rows <row>
            HStack() {
                // Dropdown Category Button
                NavigationLink(destination: DropdownView()) {
                    Text(selectedOption)
                        .font(.system(size: 15))
                        .multilineTextAlignment(.center) // Centered text
                        .lineLimit(1) // Only fit text in 1 line
                }.background(self.selectedOption == "↓ (Select a Category) ↓" ? .green : .gray) //TODO: Can be better code practice but under time constraint
                    .foregroundColor(Color.white)
                
                // Press to Track Button
                if selectedOption != "↓ (Select a Category) ↓"{ //TODO: Can be better code practice but under time constraint
                    
                    NavigationLink(destination: TrackingView(selectedOption: selectedOption)) {
                        Text("Start Tracking →")
                    }.background(.green)
                        .onAppear{ //START TIMER (Gets current date A to be subtracted from B to get total minutes spent)
                            dateDetails.startTimer()
//                            dateDetails.minutesSpent //debugging
                        }
                }
            }
        }
        .navigationBarHidden(true)
        
    }
}

