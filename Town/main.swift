//
//  main.swift
//  Town
//
//  Created by Cohen, Shelby on 8/23/19.
//  Copyright © 2019 Cohen, Shelby. All rights reserved.
//

import Foundation

print("Hello, World!")

var myTown = Town()
myTown.printDescription()
myTown.changePopulation(by: 700)

let genericMonster = Monster()
genericMonster.town = myTown
genericMonster.terrorizeTown()
