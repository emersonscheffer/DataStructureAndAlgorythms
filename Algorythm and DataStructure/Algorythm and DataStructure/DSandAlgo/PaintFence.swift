//
//  PaintFence.swift
//  Algorythm and DataStructure
//
//  Created by Ermeson Scheffer on 3/22/20.
//  Copyright © 2020 Ermeson Scheffer. All rights reserved.
//

import Foundation

func paintFence(_ posts: Int,_ colors: Int ) ->  Int {
    
    // in case there's no posts
    if posts == 0 {
        return 0
    }
    
    // in case there's only one post
    // you can use any of the available colors
    if posts == 1 {
        return colors
    }
    
    var same = colors
    var diff = colors * (colors - 1)
    
    for _ in 3..<posts {
        let prevDiff = diff
        diff = (same + diff) * (colors - 1)
        same = prevDiff
    }
    
    return same + diff
}
