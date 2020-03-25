//
//  FromLast.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/22/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

func fromLast(list: LinkedList, position: Int) -> ListNode? {
    
    var slow = list.head
    var fast = list.head
    
    for _ in 0 ..< position{
        fast = fast?.next
    }
    
    while fast?.next != nil {
        slow = slow?.next
        fast = fast?.next
    }
    
    return slow!
    
}
