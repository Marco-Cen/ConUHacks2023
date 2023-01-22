//
//  JournalEntryView.swift
//  MoveToImprove Watch App
//
//  Created by Marco Cen on 2023-01-21.
//

import Foundation
import SwiftUI

struct JournalEntryView: View {
    
//    var startStopTracking: StartStopTracking
//    startStopTracking.stopSensors()
//    startStopTracking.stopSensors()
    
    var body: some View {
        VStack() {
            
            
            Text("Journal")
            
            // Logo  (Tap on logo to finish tracking confirmation)
            NavigationLink(destination: ContentView()) {
                Image("Logo").resizable().aspectRatio(contentMode: .fit).frame(width:50, height: 50)
            }

//            Text("Activity: \(locationDetails.longestStay!)")
//            Text("Date Logged: \(locationDetails.longestStay!)")
//            Text("Location: \(locationDetails.longestStay!)") //Longest stayed location (Which tells the high probability of activity conducted to log)
//            Text("Steps Taken: \(locationDetails.longestStay!)")
//            Text("Altitude: \(locationDetails.longestStay!)")
            
            NavigationLink(destination: JournalView()) {
                Text("VIEW ALL")
            }
        }
    }
}
