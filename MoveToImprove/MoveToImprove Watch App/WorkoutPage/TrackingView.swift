//
//  TrackingView.swift
//  MoveToImprove Watch App
//
//  Created by Marco Cen on 2023-01-21.
//

import Foundation
import SwiftUI

/*
 Idle page starting built in sensors of hardware until user confirms the end of the session prompt
 */
// -- TRACKING Page [SENSORS] --

//// Get Start-Stop tracking process
//global var startStopTracking: StartStopTracking

struct TrackingView: View{
    
    @State private var showAlert = false
    @State private var shouldRedirect = false
    
    var selectedOption : String // Store last saved dropdown selected state
    
    var body: some View {
        
        VStack() {
            //        startStopTracking.startSensors()
            
            
            Image("MoveToImprove").resizable().aspectRatio(contentMode: .fit).frame(width:200, height: 100).opacity(0.5)
            
            
            Text("↓ Tracking... ↓").font(.system(size: 20))
            
            
            // Selected Category
            Text(selectedOption).foregroundColor(Color.green).font(.system(size: 18))
            
            
            // Confirmation upon pressing stop tracking
            Button(action: {
                self.showAlert = true
            }) {
                
                Text("(Stop Tracking)").foregroundColor(Color.red).font(.system(size: 20))
            }.alert(isPresented: $showAlert) {
                Alert(title: Text("Confirmation").foregroundColor(Color.green), message: Text("Are you sure you're done?")
                      
                      , primaryButton: .default(Text("Yes")) {
                    self.shouldRedirect = true
                    
                }, secondaryButton: .cancel(Text("No")) {
                    self.shouldRedirect = false
                })
            }
            
            // Only redirect if say yes
            if shouldRedirect {
                NavigationLink(destination: JournalEntryView(), isActive: $shouldRedirect) {
                    EmptyView()
                }
            }
            
    
            
        }
        .navigationBarHidden(true)
    }
    
}
