//
//  Solution300.swift
//  LeetCode
//
//  Created by zuping on 10/21/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution300: NSObject {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var dpArray: [Int] = Array(repeating: 1, count: nums.count)
        var maxLength = 1
        for idx in 1..<nums.count {
            for iidx in 0..<idx where nums[iidx] < nums[idx] {
                dpArray[idx] = max(dpArray[idx], dpArray[iidx] + 1)
            }
            maxLength = max(maxLength, dpArray[idx])
        }
        return maxLength
    }
}
