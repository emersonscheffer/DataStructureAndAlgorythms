//
//  Fibonacci.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/19/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

func iterativeFibonacci(_ number: Int) -> Int {
    
    guard number > 0 else { print("Number must be positive")
        return -1
    }
    
    var numArr = [0, 1]
    
    for i in 0..<number {
        numArr.append(numArr[i] + numArr[i + 1])
    }
    
    return numArr[number]
}
