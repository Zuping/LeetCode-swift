//
//  Solution118.swift
//  LeetCode
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution118: NSObject {
    func generate(_ numRows: Int) -> [[Int]] {
        var result: [[Int]] = []
        guard numRows > 0 else {
            return result
        }
        for idx in 0...numRows - 1 {
            var row: [Int] = [1]
            if idx == 0 {
                result.append(row)
                continue
            }
            let lastRow = result.last!
            for iidx in 1..<idx {
                row.append(lastRow[iidx] + lastRow[iidx - 1])
            }
            row.append(1)
            result.append(row)
        }
        return result
    }
}
