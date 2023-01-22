//
//  ContentView.swift
//  MoveToImprove Watch App
//  (ctrl + i == auto indent)
//  Created by Marco Cen on 2023-01-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            // Vertical Stack (Like Container)
            VStack() {
                
                // Journal Button
                NavigationLink(destination: JournalView()) {
                    Text("← JOURNAL")
                }.background(Color.green)
   
                // Logo
                Image("MoveToImprove").resizable().aspectRatio(contentMode: .fit).frame(width:200, height: 110)
                   
                // Workout Button
                NavigationLink(destination: WorkoutView(selectedOption: "↓ (Select a Category) ↓")) { //TODO: Can be better code practice but under time constraint
                    Text("WORKOUT →")
                }.background(Color.green)

            }
            .navigationBarHidden(true) //Hides Top Nav Bar (Makes it Transparent)
        }
    }
}



/// ------------------------------------------------------
/// DEBUGGING-TESTING PURPOSES
// -- Creates LIVE view in IDE --
struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
