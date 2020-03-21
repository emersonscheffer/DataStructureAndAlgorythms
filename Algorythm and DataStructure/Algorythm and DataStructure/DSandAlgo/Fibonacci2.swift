//
//  Fibonacci2.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/19/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

func recursiveFibonacci(_ number: Int) -> Int {
    
    guard number > 1 else {
        return number == 1 ? 1 : number == 0 ? 0 : -1
    }
    
    return recursiveFibonacci(number - 1) + recursiveFibonacci(number - 2)
    
}
