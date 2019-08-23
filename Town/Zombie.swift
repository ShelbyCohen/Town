//
//  Zombie.swift
//  Town
//
//  Created by Cohen, Shelby on 8/23/19.
//  Copyright © 2019 Cohen, Shelby. All rights reserved.
//

import Foundation

class Zombie: Monster {
    
    // The definition of a type-level computed property is very similar to a type method’s. The main differences are that you use the var keyword, rather than func, and you do not use the parentheses
    // One new aspect of the code above is that you use shorthand getter syntax. If you are not providing a setter for a computed property, you can omit the get block of the computed property’s definition and simply return the computed value as needed.
    override class var spookyNoise: String {
        return "Brains..."
    }
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    
    required init(town: Town?, monsterName: String) {
        walksWithLimp = false
        isFallingApart = false
        super.init(town: town, monsterName: monsterName)
    }
    
    // You mark an initializer as a convenience initializer with the convenience keyword. This keyword tells the compiler that the initializer will need to delegate to another initializer on the class, eventually calling to a designated initializer. After this call, an instance of the class is ready for use.
    convenience init(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This zombie has a bad knee.")
        }
    }
    
//    deinit {
//        print("Zombie named \(name) is no longer with us.")
//    }
    override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
        
        super.terrorizeTown()
    }
}

class ZombieBoss: Zombie {
    override func terrorizeTown() {
        print("terrorizing town...")
    }
}
