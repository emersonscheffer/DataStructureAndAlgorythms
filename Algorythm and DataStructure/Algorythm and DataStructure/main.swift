//
//  main.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/18/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

// MARK: - Anagram

print("...--- Anagram 1 ---...")
print(isAnagram(str1: "ana", str2: "naa"))

print("...--- Anagram 2 ---...")
print(isAnagram2(str1: "bad credit", str2: "debit card"))

// MARK: - CApitalize

print("---... Capitalize 1 ...---")
print(captalize(sentence: "the lazy fox"))

// MARK: - FizzBuzz

print("---... FizzBuzz ...---")
fizzBuzz(number: 25)

// MARK: - Fibonacci

print("---... Iterative Fibonacci ...---")
print(iterativeFibonacci(2))

print("---... Recursive Fibonacci ...---")
print(recursiveFibonacci(-7))

// MARK: - Pyramid

print("---... Pyramid 1 ...---")
pyramid(7)

print("---... Pyramid 2 ...---")
recursivePyramid(7)

// MARK: - Steps

print("---... Steps 1 ...---")
steps(5)

print("---... Steps 2 ...---")
recursiveSteps(5)

// MARK: - Matrix

print("---... Matrix ...---")
matrix(5)

// MARK: - Stack

print("---... Stack ...---")

var stack = Stack<String>()

stack.push("Apple")
stack.push("Banana")

print(stack.peek()!)

print(stack)

print(stack.size())

var intStack = Stack<Int>()

intStack.push(2)
intStack.push(5)
intStack.push(7)

print(intStack.size())
print(intStack)
print(intStack.isEmpty())

// MARK: - Queue

print("---... Queue ...---")

var q = Queue<String>()

q.push("Apple")
q.push("Banana")
q.push("Pear")
q.push("Strawberries")

print(q)

q.remove()

print(q)

print(q.peek()!)

print(q.isEmpty())

// MARK: - LinkedList

print("---... LinkedList ...---")

var list = LinkedList()

list.insertFirst("5")
list.insertFirst("4")
list.insertFirst("3")
list.insertFirst("2")
list.insertFirst("1")

print(list.getAt(1)!.value)
print(list)

list.removeLast()

print(list)

list.insertLast("7")
list.insertLast("9")
list.insertLast("2")

list.insertAt(value: "5", at: 4)

print(list)

print("---... Circular? ...---")

print("is this list circular? \(isCircular(list: list))")

print("---... Find MidPoint ...---")

print("The midpoint of the list is: \(midPoint(list: list)!.value)")



// MARK: - From Last

print("---... From Last ...---")

print(fromLast(list: list, position: 3)!.value)



// MARK: - Wiggle Sort

print("---... Wiggle Sort ...---")

var numbers = [3, 5, 2, 1, 6, 4]

print(wiggleSort(nums: &numbers))


// MARK: - Palindrome

print("---... Palindrome Permutation ...---")


print(palindromePermutation("carerac"))

print(palindromePermutation2("aab"))


// MARK: - Fence Paint

print(paintFence(3, 2))


// MARK: - Paint House

var houseCosts: Array<Array<Int>>? = [[14, 2, 11], [11, 14, 5], [14, 3, 10]]

print(paintHouse(&houseCosts))
