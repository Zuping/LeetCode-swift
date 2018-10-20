//
//  Solution611.swift
//  LeetCode
//
//  Created by zuping on 10/19/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution611: NSObject {
    func triangleNumber(_ nums: [Int]) -> Int {
        guard nums.count >= 3 else {
            return 0
        }
        let nums = nums.sorted()
        var result = 0
        for aIdx in 0..<nums.count - 2 where nums[aIdx] != 0 {
            var cIdx = aIdx + 2
            for bIdx in aIdx + 1..<nums.count - 1 {
                while cIdx < nums.count && nums[cIdx] < nums[aIdx] + nums[bIdx] {
                    cIdx += 1
                }
                result += cIdx - bIdx - 1
            }
        }
        return result
    }
}
