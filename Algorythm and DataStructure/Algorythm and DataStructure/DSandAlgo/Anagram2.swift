//
//  Anagram2.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/19/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation


func transformString(str: String) -> String {
    return String(Array(str).sorted())
}

func isAnagram2(str1: String, str2: String) -> Bool {
    return transformString(str: str1) == transformString(str: str2)
}
