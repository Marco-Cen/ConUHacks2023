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
        
        //        dateDetails.endTimer()
        
        VStack() {
            
            HStack(){
                NavigationLink(destination: JournalView()) {
                    Text("VIEW ALL")
                }
                
                // Logo  (Tap on logo to finish tracking confirmation)
                NavigationLink(destination: ContentView()) {
                    Image("logohd").resizable().aspectRatio(contentMode: .fit).frame(width:100, height: 50)
                }
            }
            
            Text("Journal").foregroundColor(Color.green)
            
            
            
            
            
            Text("Activity: \(selectedOption)").font(.system(size: 12))
            Text("Date Logged (M-D-Y): \(dateDetails.month) - \(dateDetails.day) - \(dateDetails.year)").font(.system(size: 12))

            //            Text("Location: \(locationDetails.longestStay!)") //Longest stayed location (Which tells the high probability of activity conducted to log)
            //            Text("Steps Taken: \(locationDetails.longestStay!)")
            //            Text("Altitude: \(locationDetails.longestStay!)")
            
            
            
            
        }
        .navigationBarHidden(true)
    }
}
