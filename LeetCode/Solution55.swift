//
//  Solution55.swift
//  LeetCode
//
//  Created by zuping on 10/20/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution55: NSObject {
    func canJump(_ nums: [Int]) -> Bool {
        guard nums.count > 0 else {
            return true
        }
        var dpArray = Array(repeating: Int.max - 10, count: nums.count)
        dpArray[0] = 0
        for idx in 0..<nums.count - 1 where nums[idx] > 0 {
            for iidx in idx + 1...min(idx + nums[idx], nums.count - 1) {
                if dpArray[iidx] > dpArray[idx] + 1 {
                    dpArray[iidx] = dpArray[idx] + 1
                }
            }
            if dpArray.last != Int.max - 10 {
                break
            }
        }
        return dpArray.last! != Int.max - 10
    }
    
    func canJump2(_ nums: [Int]) -> Bool {
        var left = nums.count - 1
        for idx in (0..<nums.count - 1).reversed() where nums[idx] + idx >= left {
            left = idx
        }
        return left == 0
    }
}
