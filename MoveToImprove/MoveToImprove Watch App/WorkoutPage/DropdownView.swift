//
//  DropdownView.swift
//  MoveToImprove Watch App
//
//  Created by Marco Cen on 2023-01-21.
//

import Foundation
import SwiftUI

// -- DROPDOWN Menu Carousel Page --
struct DropdownView: View{
    var body: some View {
        Text("Select a Category")
        
        //-- Carousel Logic
        NavigationLink(destination: TrackingView()) {
            List(1..<11) {
                Text("\($0)") //TODO: Dynamically populate based on db (Soon)
            }
            .listStyle(.carousel)
        }
        
    }
}
