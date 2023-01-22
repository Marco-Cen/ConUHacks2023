//
//  JournalEntryView.swift
//  MoveToImprove Watch App
//
//  Created by Marco Cen on 2023-01-21.
//

import Foundation
import SwiftUI

struct JournalEntryView: View {
    
    // Dates
    @State private var dateDetails = DateDetails() //For finding total minutes spent
    var selectedOption : String // Store last saved dropdown selected state
    //    var startStopTracking: StartStopTracking
    //    startStopTracking.stopSensors()
    
    var body: some View {
        
        VStack(){
            
        }
        .onAppear{ //END TIMER (Gets current date B to be subtracted from A to get total minutes spent)
            dateDetails.endTimer()
//            dateDetails.minutesSpent //Get total minute spent
        }
        
        VStack() {
            HStack(){
                NavigationLink(destination: JournalView()) {
                    Text("VIEW ALL")
                }
                
                // Logo  (Tap on logo to finish tracking confirmation)
                NavigationLink(destination: ContentView()) {
                    Image("logohd").resizable().aspectRatio(contentMode: .fit).frame(width:200, height: 30)
                }
            }
            
            
            VStack {
                
                //-- JOURNAL Header --
                HStack {
                    Text("Journal Entry").font(.system(size: 20)).bold().foregroundColor(Color.green)
                    Image(systemName: "square.and.pencil")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Spacer()
                }.padding(.horizontal)
                
                Divider()
                
                //-- ACTIVITY Header --
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "photo")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Activity: \(selectedOption)")
                            .font(.system(size: 15))
                        Spacer()
                    }
                    
                    //-- DATE Header --
                    HStack {
                        Image(systemName: "calendar")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Date: \(dateDetails.month)/\(dateDetails.day)/\(dateDetails.year)")
                            .font(.headline)
                        Spacer()
                    }
                    
                    //-- MINUTES logged Header --
                    HStack {
                        Image(systemName: "timer")
                            .resizable()
                            .frame(width: 20, height: 20)
//                        if dateDetails.minutesSpent != nil { // TODO: Timer doesnt work accordingly
                            Text("Total Time: \(UserDefaults.standard.integer(forKey: "minutesSpent")) min")  // TODO: Retrieve data stored (Since no db yet)
                                .font(.system(size: 15))
//                        } else {
//                            Text("Sorry, my fault!")
//                                .font(.system(size: 15))
//                        }
                        Spacer()
                    }
                    
                }.padding(.horizontal)
                Spacer()
            }
            .padding(.vertical)
            .cornerRadius(10)
            .shadow(radius: 5)
            
            ///-- Hardware Sensors harder to test because using emulators --
            //            Text("Location: \(locationDetails.longestStay!)") //Longest stayed location (Which tells the high probability of activity conducted to log)
            //            Text("Steps Taken: \(locationDetails.longestStay!)")
            //            Text("Altitude: \(locationDetails.longestStay!)")
            
        }
        .navigationBarHidden(true)
        
    }
}
