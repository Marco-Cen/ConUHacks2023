//
//  GPSTracking.swift
//  MoveToImprove Watch App
//
//  Created by Marco Cen on 2023-01-21.
//

import Foundation
import CoreLocation
import SwiftUI

struct GPSLocation: View {
    @State public var locationManager = CLLocationManager()
    @State private var locations = [CLLocation]()
    @State public var longestStay: CLLocation?
    private var locationDelegate = LocationManagerDelegate() // Wrapper class manage location update & allows CLLocationManagerDelegate protocol
    
    var body: some View {
        
            VStack {
                
            }
        
            /*
             To get location that was stayed longest:
             - With each time the device's location is updated, add location to array. Get difference of timestamp from curr location VS previous location timestamp; highest time difference is longest location stayed
             (NOTE: This is alternative since 'startMonitoringVisits()' is unavailable in watchOS)
             */
            .onAppear {
                self.locationDelegate.locationUpdate = { location in
                    self.locations.append(location)
                    
                    // Compare the current location's timestamp to the previous location's timestamp
                    if let previousLocation = self.locations.dropLast().last,
                       location.timestamp.timeIntervalSince(previousLocation.timestamp) > (self.longestStay?.timestamp.timeIntervalSince(previousLocation.timestamp) ?? 0) {
                        self.longestStay = location
                    }
                }
                self.locationManager.delegate = self.locationDelegate
                self.locationManager.requestWhenInUseAuthorization()
                self.locationManager.startUpdatingLocation() // Called when view appears and delegate == view (The alternative to startMonitoringVisits())
            }
        }
        
    }
