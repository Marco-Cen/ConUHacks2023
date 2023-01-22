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
        
    var body: some View {
        
        VStack() {
            //        startStopTracking.startSensors()
            
            
            // Selected Category
            Text("<Selected>").foregroundColor(Color.green)
            
            // Logo  (Tap on logo to finish tracking confirmation)
            NavigationLink(destination: FinishTrackingConfirmationView()) {
                
                Image("Logo").resizable().aspectRatio(contentMode: .fit).frame(width:400, height: 120)
            }
            
            Text("↑ <<Tracking...>> ↑").foregroundColor(Color.green)
        }
        .navigationBarTitle("MoveToImprove").font(.system(size: 12))
    }

}
