//
//  Pyramid2.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/19/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation



func recursivePyramid(_ number: Int, _ rows: Int = 0, level: String = "") -> Void {
    let midpoint = (2 * number - 1) / 2
    var lev = level
    
    if rows == number {
        return
    }
    
    if number * 2 - 1 == level.count {
        print(level)
        return recursivePyramid(number, rows + 1)
    }
    
    if midpoint - rows <= level.count && midpoint + rows >= level.count {
        lev.append("#")
    } else {
        lev.append(" ")
    }
    
    recursivePyramid(number, rows, level: lev)
}
