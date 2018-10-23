//
//  Solution53.swift
//  LeetCode
//
//  Created by zuping on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution53: NSObject {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var sum = Int.min, tmpSum = 0
        var left = 0, right = 0
        for idx in 0..<nums.count {
            while left < right && tmpSum <= 0 {
                tmpSum -= nums[left]
                left += 1
            }
            tmpSum += nums[idx]
            right += 1
            sum = max(tmpSum, sum)
        }
        return sum
    }
}
