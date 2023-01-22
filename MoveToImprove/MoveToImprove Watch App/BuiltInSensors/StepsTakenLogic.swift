//
//  StepsTakenLogic.swift
//  MoveToImprove Watch App
//
//  Created by Marco Cen on 2023-01-21.
//

import Foundation
import CoreMotion

/*
 Using the built in sensors in the hardware (Accelerometer & Gyroscope), data is given based on real time motion based information: tracking steps taken
 */
class StepsTakenLogic {
    let pedometer = CMPedometer()

    //-- Start Step Count --
    func startUpdating() {
        pedometer.startUpdates(from: Date()) { (data, error) in
            guard error == nil else { return }
            guard let data = data else { return }
            // Use the pedometer data here
        }
    }

    //-- Stop Step Count --
    func stopUpdating() {
        pedometer.stopUpdates()
    }
}
