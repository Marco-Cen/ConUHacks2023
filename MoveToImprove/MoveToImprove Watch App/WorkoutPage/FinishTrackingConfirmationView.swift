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
    
    // Confirmation Alert Box
    @State private var userChoice = false
    
    var selectedOption : String // Store last saved dropdown selected state
    
    var body: some View {
        
//        NavigationView() {
//            // Confirmatiom  (Tap on logo to finish tracking confirmation)
//            Alert(title: Text("Confirmation").foregroundColor(Color.green), message: Text("Ya sure yer done?")
//
//                  , primaryButton: .default(Text("Yes")) {
//                self.userChoice = true
//
//            }, secondaryButton: .cancel(Text("No"))){
//                self.userChoice = false
//            }
//        }
//        .navigationBarTitle("MoveToImprove").font(.system(size: 10))
        
        
        if userChoice {
             NavigationLink(destination: JournalEntryView()) {
                 EmptyView()
             }
         }
        else{
            NavigationLink(destination: TrackingView(selectedOption : selectedOption)) {
                EmptyView()
            }
        }
        
    }
}
