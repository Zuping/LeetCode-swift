//
//  Solution724.swift
//  LeetCode
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution724: NSObject {
    func pivotIndex(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return -1
        }
        var sums: [Int] = Array(repeating: 0, count: nums.count)
        for idx in 0..<nums.count {
            if idx == 0 {
                sums[idx] = nums[idx]
            } else {
                sums[idx] = sums[idx - 1] + nums[idx]
            }
        }
        for idx in 0..<nums.count {
            if idx == 0 {
                if sums.last! - sums[idx] == 0 {
                    return 0
                }
                continue
            } else if sums[idx - 1] == sums.last! - sums[idx] {
                return idx
            }
        }
        return -1
    }
}
