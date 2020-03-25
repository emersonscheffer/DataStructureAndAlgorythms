//
//  PalindromePermutation.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/22/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation


// Given a string, determine if a permutation
// of the string could form a palindrome.

// For example,
// "code" -> False, "aab" -> True, "carerac" -> True.


func palindromePermutation(_ str: String) -> Bool {
    
    // aab
    // a : 2
    // b : 1
    
    // code
    // c : 1
    // o : 1
    // d : 1
    // e : 1
    
    // carerac
    // c : 2
    // a : 2
    // r : 2
    // e : 1
    
    print(str)
    
    var dictionary = [Character: Int]()
    
    for char in str.lowercased() {
        if dictionary[char] == nil {
            dictionary[char] = 1
        } else {
            dictionary[char]! += 1
        }
    }
    
    // odd numbers.count < 2 true : false ?
    var odd = 0
    
    for (_, values) in dictionary {
 
        if values % 2 != 0 {
            
            odd += 1
            
            if odd > 1 {
                return false
            }
        }
        
    }

    return true
}

func palindromePermutation2(_ str: String) -> Bool {
          
       var dictionary = [Character: Int]()
       
       for char in str.lowercased() {
        
           if dictionary[char] == nil {
               dictionary[char] = 1
           } else {
               dictionary[char] = nil
           }
       }
    return dictionary.count <= 1
}
