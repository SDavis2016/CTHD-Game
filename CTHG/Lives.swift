//
//  Lives.swift
//  CTHG
//
//  Created by Coder on 4/25/16.
//  Copyright © 2016 Epic Gaming. All rights reserved.
//

import Foundation
// When timer runs out or wrong answer lives decrease by one
var lifeNumber = 4

func countingOfLives() -> Int {
    lifeNumber = lifeNumber - 1
    return lifeNumber
}






