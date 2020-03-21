//
//  Anagram.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/18/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

// a word or phrase that can form other words or phrases
// using that same letters in the same frequence as the original

// ex. "bad credit" == "debit card"
// output is "Anagram is True"

// MARK: - Anagram

func buildCharMap(str: String) -> Dictionary<Character, Int> {
    
    var charMap = [Character: Int]()
    
    for char in str.lowercased() {
        if char != " " {
            if charMap[char] == nil {
                charMap[char] = 1
            } else {
                charMap[char] = charMap[char]! + 1
            }
        }
    }
//    print(charMap)
    return charMap
    
}

func isAnagram(str1: String, str2: String) -> Bool {
    let charMapStr1 = buildCharMap(str: str1)
    let charMapStr2 = buildCharMap(str: str2)
    
    if charMapStr1.count != charMapStr2.count {
        return false
    }
    
    for (char, _) in charMapStr1 {
        if charMapStr1[char] != charMapStr2[char] {
            return false
        }
    }
    
    return true
}

// call function on main.swift



