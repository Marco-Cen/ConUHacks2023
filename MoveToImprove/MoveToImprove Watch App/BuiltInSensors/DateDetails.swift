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
        UserDefaults.standard.set(startTime, forKey: "startTime") //TODO: Acts as persistent storage for now since no database set up (Store value for later)
    }
    mutating func endTimer() {
        self.endTime = Date()
        UserDefaults.standard.set(endTime, forKey: "endTime") //TODO: Acts as persistent storage for now since no database set up (Store value for later)
    }
    
    // Get 2 current date time. Find difference and get total minutes spent
    var minutesSpent: Int? {
        guard let startTime = startTime, let endTime = endTime else { return nil }
        let minutes = calendar.dateComponents([.minute], from: startTime, to: endTime).minute
        UserDefaults.standard.set(minutes, forKey: "minutesSpent") //TODO: Acts as persistent storage for now since no database set up (Store value for later)
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
