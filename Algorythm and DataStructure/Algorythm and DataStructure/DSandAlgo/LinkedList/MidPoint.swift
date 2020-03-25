//
//  MidPoint.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/21/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

// find the midpoint of the list

func midPoint(list: LinkedList) -> ListNode?{
    
    var slow = list.head
    var fast = list.head
    
    while fast?.next != nil && fast?.next?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
    }
    
    return slow
}
