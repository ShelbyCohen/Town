//
//  Town.swift
//  Town
//
//  Created by Cohen, Shelby on 8/23/19.
//  Copyright © 2019 Cohen, Shelby. All rights reserved.
//

import Foundation

struct Town {
    var population = 5_422
    var numberOfStopLights = 4
    
    func printDescription() {
        print("Population: \(population); num of stoplights: \(numberOfStopLights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
