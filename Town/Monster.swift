//
//  Monster.swift
//  Town
//
//  Created by Cohen, Shelby on 8/23/19.
//  Copyright © 2019 Cohen, Shelby. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    var name = "Monster"
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
