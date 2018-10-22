//
//  Solution673.swift
//  LeetCode
//
//  Created by zuping on 10/21/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution673: NSObject {
    func findNumberOfLIS(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        if nums.count == 1 { return 1 }
        var dpArray: [Int] = Array(repeating: 1, count: nums.count)
        var cnt: [Int] = Array(repeating: 1, count: nums.count)
        var maxLength = 0, result = 0
        for idx in 1..<nums.count {
            for iidx in 0..<idx where nums[iidx] < nums[idx] {
                if dpArray[idx] < dpArray[iidx] + 1 {
                    dpArray[idx] = dpArray[iidx] + 1
                    cnt[idx] = cnt[iidx]
                } else if dpArray[idx] == dpArray[iidx] + 1 {
                    cnt[idx] += cnt[iidx]
                }
            }
            maxLength = max(maxLength, dpArray[idx])
        }
        for idx in 0..<dpArray.count where dpArray[idx] == maxLength {
            result += cnt[idx]
        }
        return result
    }
}
