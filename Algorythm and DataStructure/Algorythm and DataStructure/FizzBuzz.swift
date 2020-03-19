//
//  FizzBuzz.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/19/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

// if number is divided by 3 print fizz
// if number is divided by 5 print buzz
// if number is divided by 3 and 5 print fizzbuzz

func fizzBuzz(number: Int) {
    
    for i in 0...number {
        if i % 15 == 0 {
            print("FizzBuzz")
        } else if i % 5 == 0 {
            print("Buzz")
        } else if i % 3 == 0 {
            print("Fizz")
        } else {
            print(i)
        }
    }
}
