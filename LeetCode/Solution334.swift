//
//  Solution334.swift
//  LeetCode
//
//  Created by zuping on 10/21/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution334: NSObject {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        guard nums.count > 3 else { return false }
        var first = Int.max, second = Int.max
        for idx in 0..<nums.count {
            if nums[idx] < first {
                first = nums[idx]
            } else if nums[idx] > first && nums[idx] < second {
                second = nums[idx]
            } else if nums[idx] > second {
                return true
            }
        }
        return false
    }
}
