//
//  Solution216.swift
//  LeetCode
//
//  Created by zuping on 10/18/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution216: NSObject {
    func combinationSum3(_ kFactor: Int, _ number: Int) -> [[Int]] {
        var result: [[Int]] = []
        var currentRes: [Int] = []
        recursionHelper(kFactor, 1, number, &currentRes, &result)
        return result
    }
    
    func recursionHelper( _ kFactor: Int, _ index: Int, _ target: Int, _ currentRes: inout [Int], _ result: inout [[Int]]) {
        if currentRes.count == kFactor {
            if target == 0 {
                result.append(currentRes)
            }
            return
        }
        if index > 9 {
            return
        }
        for idx in index...9 where target >= idx {
            currentRes.append(idx)
            recursionHelper(kFactor, idx + 1, target - idx, &currentRes, &result)
            currentRes.removeLast()
        }
    }

}
