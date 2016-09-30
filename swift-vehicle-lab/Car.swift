//
//  Car.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Car: Vehicle {
    let transmission: String
    let cylinders: Int
    let milesPerGallon: Double
    
    init(transmission: String, cylinders: Int, milesPerGallon: Double, name: String, weight: Double, maxSpeed: Double) {
        
        self.transmission = transmission
        self.cylinders = cylinders
        self.milesPerGallon = milesPerGallon
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func drive() {
        super.accelerate()
    }
    
    func brake() {
        super.decelerate()
    }
}
