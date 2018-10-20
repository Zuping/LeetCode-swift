//
//  Solution16.swift
//  LeetCode
//
//  Created by zuping on 10/19/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution16: NSObject {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count >= 3 else {
            return 0
        }
        let nums = nums.sorted()
        var distance = Int.max
        var result = 0
        for aIdx in 0..<nums.count - 2 where aIdx == 0 || (nums[aIdx - 1] != nums[aIdx]) {
            for bIdx in aIdx + 1..<nums.count - 1 where bIdx == aIdx + 1 || (nums[bIdx - 1] != nums[bIdx]) {
                let expectedCVal = target - nums[aIdx] - nums[bIdx]
                var cIdx = bIdx + 1
                while cIdx < nums.count - 1 && nums[cIdx] < expectedCVal {
                    cIdx += 1
                }
                if abs(nums[cIdx] - expectedCVal) < abs(nums[cIdx - 1] - expectedCVal) {
                } else if cIdx - 1 != bIdx {
                    cIdx -= 1
                }
                let sum = nums[aIdx] + nums[bIdx] + nums[cIdx]
                if abs(sum - target) < distance {
                    distance = abs(sum - target)
                    result = sum
                }
            }
        }
        return result
    }
}
