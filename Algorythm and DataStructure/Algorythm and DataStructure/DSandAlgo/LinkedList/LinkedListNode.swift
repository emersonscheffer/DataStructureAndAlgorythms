//
//  LinkedListNode.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/21/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation


class ListNode {
    var value: String
    
    init(value: String) {
        self.value = value
    }
    
    var next: ListNode?
    
    //weak var previous: ListNode?
}

extension ListNode: Equatable {
    static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.value == rhs.value
    }
}
