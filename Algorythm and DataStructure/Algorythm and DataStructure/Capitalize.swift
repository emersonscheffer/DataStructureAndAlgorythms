//
//  Capitalize.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/19/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation


// Build your own String Extension for grabbing a character at a specific position
extension String {
 
    func index(at position: Int, from start: Index? = nil) -> Index? {
        let startingIndex = start ?? startIndex
        return index(startingIndex, offsetBy: position, limitedBy: endIndex)
    }
 
    func character(at position: Int) -> Character? {
        guard position >= 0, let indexPosition = index(at: position) else {
            return nil
        }
        return self[indexPosition]
    }
}

func captalize(sentence: String) -> String {
    
    var words = sentence.prefix(1).uppercased()
    
    for i in 1...sentence.count - 1 {
        
        if sentence.character(at: i - 1) == " " {
            words.append(sentence.character(at: i)!.uppercased())
        } else {
            words.append(sentence.character(at: i)!)
        }
    }
    
    return  words
}
