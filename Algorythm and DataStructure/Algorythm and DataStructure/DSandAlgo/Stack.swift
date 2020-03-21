//
//  Stack.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/20/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation


// last in , first out

struct Stack<Element> {
    fileprivate var dataStore: [Element] = []
    
    mutating func push(_ element: Element) {
        dataStore.append(element)
    }
    
    mutating func pop() -> Element? {
        dataStore.count == 0 ? print("No more elements in the stack") : nil
        return dataStore.popLast()
    }
    
    mutating func peek() -> Element? {
        return dataStore.last
    }
    
    func size() -> Int {
        return dataStore.count
    }
    
    func isEmpty() -> Bool {
        return dataStore.count > 0 ? false : true
    }
}
