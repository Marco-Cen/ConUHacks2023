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
    var body: some View {
    
        VStack() {
            // Dropdown Category Button
            NavigationLink(destination: DropdownView()) {
                Text("↓ (Select category...) ↓")
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center) // Centered text
                    .lineLimit(1) // Only fit text in 1 line
            }.background(Color.gray).foregroundColor(Color.black)
            
            // Logo
            Image("Logo").resizable().aspectRatio(contentMode: .fit).frame(width:180, height: 110)
            
            // Press to Track Button
            NavigationLink(destination: TrackingView()) {
                Text("Start Tracking →")
            }.background(Color.green)
            
        }
            navigationBarHidden(true)
    }
}
