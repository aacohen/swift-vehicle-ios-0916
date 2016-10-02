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
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff() {
        if inFlight == false {
            speed = (1 / 10) * maxSpeed
            altitude = (1/10) * maxAltitude
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
        if inFlight {
            self.altitude = self.altitude + ((1/10) * maxAltitude)
            decelerate()
            if self.altitude > maxAltitude {
                self.altitude = maxAltitude
            }
            //causes the plan to decelerate. do I need to add a statement in here for that?
            //should not increase altitude beyond maxAltitude
        }
    }
    
    func dive() {
        if inFlight || (altitude > 0 && speed == 0) {
        self.altitude = self.altitude - ((1/10) * maxAltitude)
        }
        accelerate()
        //if the plane's speed is zero, it is still in the air but has "stalled" and is still able to perform a dive in order to convert altitude into speed.
    }
    
    func bankRight() {
        if inFlight {
        self.heading = self.heading + 45
        self.speed = self.speed - ((1/10) * self.speed)
        }
        if self.heading >= 360 {
            self.heading = 359
        }

    }
    
    func bankLeft() {
        if inFlight {
            self.heading = self.heading - 45
            self.speed = self.speed - ((1/10) * self.speed)
        }
        switch heading {
        case -45:
            self.heading = 315
        case -90:
            self.heading = 270
        case -135:
            self.heading = 225
        default:
            "do nothing"
        }

        if self.heading < 0 {
            self.heading = 0
        }

    }
    
    
}
