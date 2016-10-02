//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    init (name: String, weight: Double, maxSpeed: Double,transmission: String, cylinders: Int, milesPerGallon: Double,   driver: String, sponsors: [String]) {
        
        self.driver = driver
        self.sponsors = sponsors
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        self.speed = self.speed + (1 / 5) * maxSpeed
        if self.speed > maxSpeed {
            self.speed = maxSpeed
        }
    }
    
    override func decelerate() {
        self.speed = self.speed - (1 / 5) * maxSpeed
        if self.speed < 0 {
            self.speed = 0
        }
        //should not decrease the speed below 0
    }
    
    func driftRight() {
        if speed > 0 {
            self.heading = self.heading + 90
            self.speed = self.speed - ( (1 / 4) * self.speed)
        }
        if self.heading >= 360 {
            self.heading = 359
        }

    }
    
    func driftLeft () {
        if speed > 0 {
            self.heading = self.heading - 90
            self.speed = self.speed - ( (1 / 4) * self.speed)
        }
        switch heading {
        case -90:
            self.heading = 270
        case -180:
            self.heading = 180
        case -270:
            self.heading = 90
        default:
            "do nothing"
        }

        if self.heading < 0 {
            self.heading = 0
        }
    }
    
    
    
}
