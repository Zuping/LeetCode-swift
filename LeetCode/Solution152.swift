//
//  Solution152.swift
//  LeetCode
//
//  Created by zuping on 10/22/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution152: NSObject {
    func maxProduct(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var dpMin: [Int] = Array(repeating: 1, count: nums.count)
        dpMin[0] = nums[0]
        var dpMax: [Int] = Array(repeating: 1, count: nums.count)
        dpMax[0] = nums[0]
        var maxProduct = nums[0]
        for idx in 1..<nums.count {
            dpMax[idx] = max(nums[idx], nums[idx] * dpMax[idx - 1], nums[idx] * dpMin[idx - 1])
            dpMin[idx] = min(nums[idx], nums[idx] * dpMax[idx - 1], nums[idx] * dpMin[idx - 1])
            maxProduct = max(maxProduct, dpMax[idx])
        }
        
        return maxProduct
    }
}
