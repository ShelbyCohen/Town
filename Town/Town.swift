//
//  Town.swift
//  Town
//
//  Created by Cohen, Shelby on 8/23/19.
//  Copyright © 2019 Cohen, Shelby. All rights reserved.
//

import Foundation

struct Town {
    let region: String
    
    var population: Int {
        didSet(oldPopulation) {
            print("the population has changed to \(population) from \(oldPopulation)")
        }
    }
    var numberOfStopLights: Int
    
    // Adding a memberwise initializer
    // When you write your own initializer, Swift will not give you any free initializers (say good-bye to the default memberwise initializer!). You are responsible for ensuring that instances’ properties are all given their appropriate values.
    init(region: String, population: Int, stoplights: Int) {
        self.region = region
        self.population = population
        // don't need self because it is set to different name
        numberOfStopLights = stoplights
    }
    
    // Using initializer delegation
    // What about the region property? How is that getting set?
    // Look at this new initializer’s implementation. You call Town’s other initializer on self in the line self.init(region: "N/A", population: population, stoplights: stoplights). Notice that you pass in the supplied arguments for population and stoplights. Because you do not have an argument for region, you have to supply your own value. In this case, you specify the string "N/A" to signify that there was no region information given to the initializer.
    // nitializer delegation helps avoid duplication of code
    init(population: Int, stoplights: Int) {
        self.init(region: "N/A", population: population, stoplights: stoplights)
    }
    
    
    enum Size {
        case small
        case medium
        case large
    }
    
    // lazy means townSize’s value will only be calculated when it is first accessed
    lazy var townSize: Size = {
        switch self.population {
        case 0...10_000:
            return Size.small
        case 10_001...100_000:
            return Size.medium
        default:
            return Size.large
        }
    }()
    
    func printDescription() {
        print("Population: \(population); num of stoplights: \(numberOfStopLights) region: \(region)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
