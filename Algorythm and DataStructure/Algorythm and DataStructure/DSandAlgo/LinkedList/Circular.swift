//
//  Circular.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/22/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

func isCircular(list: LinkedList) -> Bool {
    
    var slow = list.head
    var fast = list.head
    
    while fast?.next != nil && fast?.next?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
        
        if slow == fast {
            return true
        }
    }
    
    return false
}
