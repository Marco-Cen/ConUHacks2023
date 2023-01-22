//
//  StartTracking.swift
//  MoveToImprove Watch App
//
//  Created by Marco Cen on 2023-01-21.
//

import Foundation

class StartStopTracking{
    
    // Start the tracking of built in sensors
    var pedometerManager = StepsTakenLogic() //Public in order to stop timer in another class
    var dateDetails = DateDetails() //For finding total minutes spent
    //     var GPSLocation = GPSLocation()
    
    
    func startSensors() {
        pedometerManager.startUpdating()
        dateDetails.startTimer()
        //        GPSLocation.startUpdating()
    }
    
    // Stop tracking and take data collected
    func stopSensors(){
        pedometerManager.stopUpdating()
        dateDetails.endTimer()
        //        GPSLocation.locationManager.stopUpdatingLocation()
    }
    
}
