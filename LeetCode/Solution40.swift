//
//  Solution40.swift
//  LeetCode
//
//  Created by zuping on 10/18/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution40: NSObject {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result: [[Int]] = []
        var currentRes: [Int] = []
        recursionHelper(candidates.sorted(), target, 0, &currentRes, &result)
        return result
    }

    func recursionHelper(_ candidates: [Int], _ target: Int, _ index: Int,
                         _ currentRes: inout [Int], _ result: inout [[Int]]) {
        if target == 0 {
            result.append(currentRes)
            return
        }
        if index >= candidates.count {
            return
        }

        for idx in index..<candidates.count where target >= candidates[idx] {
            if idx > index && candidates[idx - 1] == candidates[idx] {
                continue
            }
            currentRes.append(candidates[idx])
            recursionHelper(candidates, target - candidates[idx], idx + 1, &currentRes, &result)
            currentRes.removeLast()
        }
    }
}
