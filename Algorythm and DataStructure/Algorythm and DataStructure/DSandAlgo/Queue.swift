//
//  Queue.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/21/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation


// first in , first out

struct Queue<Element> {
    var dataStore : [Element] = []
    
    mutating func push(_ element: Element) {
        dataStore.append(element)
    }
    
    mutating func remove() -> Element? {
        return dataStore.count > 0 ?
            dataStore.remove(at: 0)
            : nil
    }
    
    mutating func peek() -> Element?{
        return dataStore.first
    }
    
    func size() -> Int {
        return dataStore.count
    }
    
    func isEmpty() -> Bool{
        return dataStore.count > 0 ?
            false : true
    }
    
}
