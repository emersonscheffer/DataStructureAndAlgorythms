//
//  Stack.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/20/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

struct Stack {
    fileprivate var dataStore: [String] = []

    mutating func push(_ element: String) {
        dataStore.append(element)
    }
    
    mutating func pop() -> String? {
        return dataStore.popLast()
    }
    
    mutating func peek() -> String? {
        return dataStore.last
    }
    
    func size() -> Int {
        return dataStore.count
    }
}
