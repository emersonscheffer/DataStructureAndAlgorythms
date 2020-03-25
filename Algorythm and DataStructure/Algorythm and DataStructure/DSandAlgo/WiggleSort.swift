//
//  WiggleSort.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/21/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

func swap(nums: inout Array<Int>, i: Int, j: Int){
 
    let temp = nums[i]
    nums[i] = nums[j]
    nums[j] = temp
}

func wiggleSort(nums: inout Array<Int>) -> Array<Int> {
    nums.sort()
    
    for i in 0..<nums.count - 1 {
        if ((i % 2 == 0) && nums[i] > nums[i + 1]) || ((i % 2 == 1) && nums[i] < nums[i + 1]){
            
            swap(nums: &nums, i: i, j: i + 1)
            
        }
    }
    return nums
}
