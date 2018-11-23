//
//  SolutionBinarySearch.swift
//  LeetCode
//
//  Created by zuping on 11/19/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class SolutionBinarySearch: NSObject {
    // 240. Search a 2D Matrix II
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard matrix.count > 0 && matrix[0].count > 0 else { return false }
        var y = 0, x = matrix[0].count - 1
        while x >= 0 && y < matrix.count {
            if matrix[y][x] == target {
                return true
            } else if matrix[y][x] < target {
                y += 1
            } else {
                x -= 1
            }
        }
        return false
    }
}
