//
//  Steps.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/19/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

func steps(_ number: Int) {
    for i in 0..<number {
        var steps = String()
        for j in 0..<number {
            if i >= j {
                steps.append("#")
            } else {
                steps.append(" ")
            }
        }
        print(steps)
    }
}
