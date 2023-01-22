//
//  StartTracking.swift
//  MoveToImprove Watch App
//
//  Created by Marco Cen on 2023-01-21.
//

import Foundation

class StartStopTracking{
    
    // Start the tracking of built in sensors
     let pedometerManager = StepsTakenLogic() //Public in order to stop timer in another class
//     let GPSLocation = GPSLocation()
    let dateDetails = DateDetails()
    
    func startSensors() {
        pedometerManager.startUpdating()
//        GPSLocation.startUpdating()
//        dateDetails.start
    }
    
    // Stop tracking and take data collected
    func stopSensors(){
        pedometerManager.stopUpdating()
//        GPSLocation.locationManager.stopUpdatingLocation()
    }

}
