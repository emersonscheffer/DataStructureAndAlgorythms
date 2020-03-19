//
//  Pyramid.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/19/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

// print a pyramid on the console
// if you pass an integer 3 as the argument
// the pyramid should have 3 levels

// ex         #
//           ###
//          #####
 
func pyramid(_ number: Int){
    
    guard number > 0 else { return print("number must be positive")}
    
    let midpoint = (2 * number - 1) / 2
    
    for i in 0..<number {
        
        var levels = String()
        
        for j in 0..<number * 2 - 1 {
            if midpoint - i <= j && midpoint + i >= j {
                levels.append("#")
            } else {
                levels.append(" ")
            }
        }
        
        print(levels)
    }
   
}
