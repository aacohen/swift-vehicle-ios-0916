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
    
    init (transmission: String, cylinders: Int, milesPerGallon: Double, name: String, weight: Double, maxSpeed: Double, driver: String, sponsors: [String]) {
        
        self.driver = driver
        self.sponsors = sponsors
        
        super.init(transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon, name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    override func accelerate() {
        self.speed = self.speed + (1 / 5) * maxSpeed
        //should not increase speed beyond the maxSpeed
    }
    
    override func decelerate() {
        self.speed = self.speed - (1 / 5) * maxSpeed
        //should not decrease the speed below 0
    }
    
    func driftRight() {
        if speed > 0 {
            self.heading = self.heading + 90
            self.speed = self.speed - ( (1 / 4) * self.speed)
        }
    }
    
    func driftLeft () {
        if speed > 0 {
            self.heading = self.heading - 90
            self.speed = self.speed - ( (1 / 4) * self.speed)
        }
    }
    
    
    
}
