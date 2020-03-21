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

print("---... Capitalize 1 ...---")
print(captalize(sentence: "the lazy fox"))

print("---... FizzBuzz ...---")
fizzBuzz(number: 25)

print("---... Iterative Fibonacci ...---")
print(iterativeFibonacci(2))

print("---... Recursive Fibonacci ...---")
print(recursiveFibonacci(-7))

print("---... Pyramid 1 ...---")
pyramid(7)

print("---... Pyramid 2 ...---")
recursivePyramid(7)

print("---... Steps 1 ...---")
steps(5)

print("---... Steps 2 ...---")
recursiveSteps(5)

print("---... Matrix ...---")
matrix(5)


print("---... Stack ...---")

var stack = Stack()

stack.push("Emerson")
stack.push("Ermiton")

print(stack.peek()!)

print(stack)

print(stack.size())
