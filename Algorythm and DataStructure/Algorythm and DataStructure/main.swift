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

