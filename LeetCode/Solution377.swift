//
//  Solution377.swift
//  LeetCode
//
//  Created by zuping on 10/19/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution377: NSObject {
    func combinationSum4(_ nums: [Int], _ target: Int) -> Int {
        var count: [Double] = Array(repeating: 0, count: target + 1)
        count[0] = 1
        let nums = nums.sorted()
        for idx in 1...target {
            for iidx in 0..<nums.count where nums[iidx] <= idx {
                count[idx] += count[idx - nums[iidx]]
            }
        }
        return Int(count[target])
    }
}
