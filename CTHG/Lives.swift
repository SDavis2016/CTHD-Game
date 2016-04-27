//
//  Lives.swift
//  CTHG
//
//  Created by Coder on 4/25/16.
//  Copyright © 2016 Epic Gaming. All rights reserved.
//

import Foundation
// When timer runs out or wrong answer lives decrease by one

var timerIndicator = 15
var answer = true

func countingOfLives() -> Int {
        if answer == "Incorrect" {
    lifeNumber = lifeNumber - 1
    }
    return lifeNumber
}






















