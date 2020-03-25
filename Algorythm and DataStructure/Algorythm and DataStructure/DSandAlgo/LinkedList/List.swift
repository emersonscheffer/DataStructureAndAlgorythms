//
//  List.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/21/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

struct LinkedList {
    public var head: ListNode?
    private var tail: ListNode?
    
    // MARK: - is Empty
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    // MARK: - Insert First
    
    mutating func insertFirst(_ value: String) {
        
        let newNode = ListNode(value: value)
        newNode.next = head
        head = newNode
        
    }
    
    // MARK: - Insert Last
    
    mutating func insertLast(_ value: String) {
                        
        guard getSize() > 0 else { return head = ListNode(value: value) }
        
        let last = getLast()
        
        last?.next = ListNode(value: value)
    }
    
    
    // MARK: - Insert At
    
    mutating func insertAt(value: String, at: Int ) {
        
        guard at >= 0 else {
            return print("Number position must be positive")
        }
        
        if at == 0 {
            return insertFirst(value)
        }
        
        if at > getSize() {
            return insertLast(value)
        }
 
        let previous = getAt(at - 1)
        
        let newNode = ListNode(value: value)
        
        newNode.next = previous?.next
        
        previous?.next = newNode
    }
    
    
    // MARK: - Get Size
    func getSize() -> Int {
        var counter = 0
        
        if head == nil {
            return counter
        } else {
            
            counter = 1
            
            var node = head
            
            while node!.next != nil {
                counter += 1
                node = node?.next
            }
            
            return counter
            
        }
    }
    
    // MARK: - Get First
    
    func getFirst() -> ListNode? {
        //print(head!)
        return head
    }
    
    // MARK: - Get At
    
    mutating func getAt(_ number: Int) -> ListNode? {
        
        var node = head
        var counter = 0
        
        while node!.next != nil {
            
            if counter == number {
                
                return node!
            }
            
            node = node?.next
            counter += 1
        }
        return nil
    }
    
    
    // MARK: - Get Last
    
    func getLast() -> ListNode? {
        
        guard !isEmpty else {
            return nil
        }
        
        var node = head
        
        while (node!.next != nil) {
            node = node?.next
        }
        
        return node!
    }
    
    // MARK: - Clear
    
    mutating func clear() {
        return head = nil
    }
    
    
    // MARK: - Remove First
    
    mutating func removeFirst() -> ListNode? {
        
        if head == nil {
            return nil
        }
        
        let node = head?.next
        head = node
        return node!
    }
    
    
    // MARK: - Remove At
    
    mutating func removeAt(_ number: Int) {
        
        // what if list is empty?
        guard !isEmpty else { return print("The list is empty") }
        
        let size = getSize()
        
        if number == 0 {
            head = head?.next
        }
        
        if size - 1 >= number {
            let previous = getAt(number - 1)
            previous?.next = getAt(number + 1)
        } else {
            print("number \(number) is greater than list size")
        }
        
    }
    
    // MARK: - Remove Last
    
    mutating func removeLast() {
        let size = getSize()
        removeAt(size - 1)
    }
   
}

// MARK: - Custom String Comvertible

extension LinkedList: CustomStringConvertible {
    var description: String {
        var text = "["
        var node = head
        
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", "}
        }
        return text + "]"
    }
    
}

// MARK: - Equatable

extension LinkedList: Equatable {
    static func == (lhs: LinkedList, rhs: LinkedList) -> Bool {

        return lhs.head == rhs.head
        
    }


}
