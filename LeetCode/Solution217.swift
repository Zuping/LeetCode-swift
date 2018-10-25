//
//  Solution217.swift
//  LeetCode
//
//  Created by zuping on 10/23/18.
//  Copyright © 2018 zuping. All rights reserved.
//

import Cocoa

class Solution217: NSObject {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else {
            return false
        }
        let nums = nums.sorted()
        var pre = nums[0]
        for idx in 1..<nums.count {
            if pre == nums[idx] {
                return true
            } else {
                pre = nums[idx]
            }
        }
        return false
    }
}
