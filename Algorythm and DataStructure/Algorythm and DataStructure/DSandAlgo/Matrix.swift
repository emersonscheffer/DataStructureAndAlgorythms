//
//  Matrix.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/19/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

func matrix(_ number: Int) {
    var resultArr = [Array<Int>]()
    
    for _ in 0..<number {
        var tempArr = [Int]()
        
        for _ in 0..<number {
            tempArr.append(0)
        }
        
        resultArr.append(tempArr)
    }

    var counter = 1
    
    var startColumn = 0
    var endColumn = number - 1
    var startRow = 0
    var endRow = number - 1
    
    
    while startColumn <= endColumn && startRow <= endRow {
        
        //top row
        // i = startColumn ; i <= endColumn ; i ++
        var tempIndex = startColumn
        while tempIndex <= endColumn {
            resultArr[startRow][tempIndex] = counter
            counter += 1
            tempIndex += 1
        }
        startRow += 1
        
        //right column
        // i = startRow; i <= endRow; i ++
        tempIndex = startRow
        while tempIndex <= endRow {
            resultArr[tempIndex][endColumn] = counter
            counter += 1
            tempIndex += 1
        }
        endColumn -= 1
        
        //bottom row
        // i = endColumn; i >= startColumn; i --
        tempIndex = endColumn
        while tempIndex >= startColumn {
            resultArr[endRow][tempIndex] = counter
            counter += 1
            tempIndex -= 1
        }
        endRow -= 1
        
        //startColumn -  leftColumn
        // i = endRow ; i >= startRow ; i --
        tempIndex = endRow
        while tempIndex >= startRow {
            resultArr[tempIndex][startColumn] = counter
            counter += 1
            tempIndex -= 1
        }
        
        startColumn += 1
        
    }
    
    for i in 0..<number {
        print(resultArr[i])
    }
}
