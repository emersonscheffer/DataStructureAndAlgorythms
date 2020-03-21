//
//  Steps2.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/19/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation


func recursiveSteps(_ number: Int, _ row: Int = 0, _ steps: String = "") {
    
    var stepTemp = steps
    
    guard number > 0 else {
        return print("Number must be greater than 0")
    }
    
    if number == row {
        return
    }
    
    if number == steps.count {
        print(steps)
        return recursiveSteps(number, row + 1)
    }
    
    if steps.count <= row {
        stepTemp.append("#")
    } else {
        stepTemp.append(" ")
    }
    
    recursiveSteps(number, row, stepTemp)
    
}
