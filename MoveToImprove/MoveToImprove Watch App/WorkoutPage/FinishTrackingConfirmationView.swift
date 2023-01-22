//
//  FinishTrackingConfirmationView.swift
//  MoveToImprove Watch App
//
//  Created by Marco Cen on 2023-01-21.
//

import Foundation
import SwiftUI

// -- Finish Tracking CONFIRMATION Page --
struct FinishTrackingConfirmationView: View{
    var body: some View {
        
        VStack() {
            
            // Confirmatiom  (Tap on logo to finish tracking confirmation)
            NavigationLink(destination: JournalEntryView()) {
                Text("Are you sure you're done?").foregroundColor(Color.green)
            }
            
        }
        .navigationBarTitle("MoveToImprove").font(.system(size: 14))
    }
}
