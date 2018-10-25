//
//  Solution209.swift
//  LeetCode
//
//  Created by zuping on 10/24/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution209: NSObject {
    func minSubArrayLen(_ sum: Int, _ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        var length = Int.max
        var left = 0, right = 1
        var curSum = 0
        for idx in 0..<nums.count {
            curSum += nums[idx]
            if curSum >= sum {
                while curSum >= sum {
                    curSum -= nums[left]
                    left += 1
                }
                length = min(length, (right - left + 1))
            }
            right += 1
        }
        return length == Int.max ? 0 : length
    }
}
