//
//  DateDetails.swift
//  MoveToImprove Watch App
//
//  Created by Marco Cen on 2023-01-22.
//

import Foundation
import SwiftUI

struct DateDetails {
    
    // Get current time
    let calendar = Calendar.current
    let currentDate = Date()
    
    // Get start-end time in minutes
    var startTime: Date?
    var endTime: Date?
    
    mutating func startTimer() {
        self.startTime = Date()
    }
    mutating func endTimer() {
        self.endTime = Date()
    }
    
    // Get 2 current date time. Find difference and get total minutes spent
    var minutesSpent: Int? {
        guard let startTime = startTime, let endTime = endTime else { return nil }
        let minutes = calendar.dateComponents([.minute], from: startTime, to: endTime).minute
        return minutes
    }
  
    // Get Day, Month, Year
    var day: Int {
        return calendar.component(.day, from: currentDate)
    }
    var month: Int {
        return calendar.component(.month, from: currentDate)
    }
    var year: Int {
        return calendar.component(.year, from: currentDate)
    }
}
