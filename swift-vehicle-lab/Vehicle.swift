//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0.0
    var heading: Double = 0.0
    //set heading diameters between 0 and 360?
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    //Methods
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0.0
    }
    
    func accelerate() {
        self.speed = self.speed + ((1/10) * self.maxSpeed)
        //add in parameter that speed should not be more than maxSpeed
    }
    
    func decelerate() {
        self.speed = self.speed - ((1/10) * self.maxSpeed)
        // add in parameter that speed should not drop below maxSpeed
    }
    
    func turnRight() {
        if speed > 0{
        self.heading = self.heading + 90
        self.speed = self.speed / 2
            }
    }
    // Top-tip: The modulus operator won't perform the math that you want if you simply feed it -90. You're going to have to help it figure out how to simulate a left turn.
    func turnLeft() {
        if speed > 0 {
            self.heading = self.heading - 90
            self.speed = self.speed / 2
        }
    }
    
    
}
