//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0.0
    var inFlight: Bool {return (speed > 0) && (altitude > 0) }
    
    init(maxAltitude: Double, name: String, weight: Double, maxSpeed: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if speed < 0 {
            self.speed = self.speed - ((1 / 10) * self.maxSpeed)
            self.altitude = self.altitude - ((1/10) * self.maxAltitude)
        }
    }
    
    func land() {
        if speed > 0 {
            self.speed = 0
            self.altitude = 0
            //should I take it out of the if statement
        }
    }
    
    func climb(){
        if speed > 0 {
            
            
        }
    }
}
