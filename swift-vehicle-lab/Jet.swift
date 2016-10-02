//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Jet: Plane {
    
    override func climb() {
        if inFlight {
        altitude = altitude + ((1/5) * maxAltitude)
            decelerate()
            //not increase altitude beyond maxltitude
        }
    }
    
    override func dive() {
        if inFlight {
            altitude = altitude - ((1/5) * maxAltitude)
            accelerate()
            //not decrease below 0
        }
    }
    
    func afterburner() {
        if inFlight && (speed == maxSpeed) {
        speed = speed * 2
        }
    }
}
