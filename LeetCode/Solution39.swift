//
//  Solution39.swift
//  LeetCode
//
//  Created by zuping on 10/17/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution39: NSObject {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result: [[Int]] = []
        recursionHelper(candidates, target, 0, [], &result)
        return result
    }
    
    func recursionHelper(_ candidates: [Int], _ target: Int, _ index: Int,
                         _ currentRes: [Int], _ result: inout [[Int]]) {
        if target == 0 {
            result.append(currentRes)
            return
        }
        if index >= candidates.count {
            return
        }
        recursionHelper(candidates, target, index + 1, currentRes, &result)
        var curRes = currentRes
        var target = target
        while target >= candidates[index] {
            target -= candidates[index]
            curRes.append(candidates[index])
            recursionHelper(candidates, target, index + 1, curRes, &result)
        }
    }
}
