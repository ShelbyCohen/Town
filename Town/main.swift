//
//  main.swift
//  Town
//
//  Created by Cohen, Shelby on 8/23/19.
//  Copyright © 2019 Cohen, Shelby. All rights reserved.
//

import Foundation

print("Hello, World!")

var myTown = Town(population: 10_000, stoplights: 6)
myTown.printDescription()

let genericMonster = Monster(town: myTown, monsterName: "Crystal")
genericMonster.town = myTown
genericMonster.terrorizeTown()

var crystalTheZombie = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Crystal")
crystalTheZombie.terrorizeTown()
crystalTheZombie.town?.printDescription()

print("Victim pool: \(crystalTheZombie.victimPool)")
crystalTheZombie.victimPool = 500

print(Zombie.spookyNoise)

if Zombie.isTerrifying {
    print("Run away!")
}

var convenientZombie = Zombie(limp: true, fallingApart: false)

